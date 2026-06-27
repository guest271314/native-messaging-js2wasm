// Native Messaging host, compiled to standalone WASI by js2wasm.
//
//   npx js2wasm examples/native-messaging/nm_js2wasm.ts --target wasi -o out
//
// `--target wasi` ALONE (no `--link-node-shims`) emits a SELF-CONTAINED WASI
// Preview-1 command module: it imports ONLY `wasi_snapshot_preview1` (fd_read /
// fd_write), owns + exports its own `memory`, and runs directly under a WASI
// host such as wasmtime — no node:fs shim, no Node runtime (#2655). This is the
// loopdive/js2#389 reporter's exact use case: a host that runs under a WASI host,
// explicitly "not chasing Node.js".
//
// This source uses REAL Node fd-based synchronous IO — `fs.readSync(fd, …)` /
// `fs.writeSync(fd, …)` from `node:fs` — so the SAME file ALSO runs UNMODIFIED
// under real `node`. The earlier version used `process.stdin.read(buffer,
// offset)`, which matches NO real Node API: `process.stdin` is an async Duplex
// stream with no synchronous buffer-filling `read`. `fs.readSync` /
// `fs.writeSync` are the faithful synchronous primitives (this is also what Javy
// uses: `Javy.IO.readSync`).
//
//   npx js2wasm examples/native-messaging/nm_js2wasm.ts --target wasi --link-node-shims -o out
//
// is the VARIANT that lowers the same calls to imported `node:fs` shim calls
// (`node-fs.wat`, which maps them to WASI fd_read / fd_write) — useful when the
// same binary should link against an external `node:fs` provider rather than
// owning the syscalls itself. Either way `readSync(0,…)` / `writeSync(1,…)` /
// `writeSync(2,…)` are fd-based (integer fd 0=stdin, 1=stdout, 2=stderr), NOT
// path-based — no filesystem involved; under real node they call the real fs.
//
// Native Messaging protocol frames each message as a 4-byte little-endian length
// prefix followed by a UTF-8 **JSON** body, exchanged over the host process's
// stdin (fd=0) and stdout (fd=1). See:
//   https://developer.chrome.com/docs/extensions/develop/concepts/native-messaging
//
// Two hard browser constraints drive the response shape:
//   1. Browser deserializes EVERY host->extension message as JSON, so each frame
//      we write must be a complete, valid JSON value — not an arbitrary byte
//      slice. (A non-JSON frame is rejected with "The sender sent an invalid
//      JSON message; message ignored.")
//   2. A single host->extension message is capped at 1 MiB.
//
// So a large message — e.g. `port.postMessage(Array(209715*64))`, ~64 MiB of
// `[null,null,...]` — is re-chunked into a sequence of <=1 MiB valid JSON arrays
// whose elements, concatenated by the receiver, reproduce the original array.
// A message that already fits in one frame is echoed verbatim.
//
// This host STREAMS the re-chunk through a single reused 1 MiB buffer: it never
// holds the whole body, so resident memory stays flat (~a couple MiB) regardless
// of message size or count. It also never calls `Uint8Array.prototype.subarray`
// — under wasmtime that lowers to a native `array.copy` that is ~14x slower than
// an element loop on i8 GC arrays — each frame is built with an element loop into
// an exact-size buffer and written whole. Reads fill the buffer to its exact
// capacity (or use an exact-size buffer for the final partial batch), so a read
// can never pull bytes past the current message into the next one.
//
// js2wasm support today:
//   - stdin  : readSync(0, buf, { offset, length }) does one binary, incremental
//              fd=0 read into the caller's typed buffer, returning the byte count
//              (#2631). A read-until loop assembles exactly N. `length` is always
//              passed as the remaining-to-target count so a read can never pull
//              bytes past the current message into the next.
//   - stdout : writeSync(1, bytes, off) writes raw bytes to fd=1 with NO trailing
//              newline; the partial-write loop drains the whole buffer (#2631).
//   - stderr : writeSync(2, bytes, …) writes to fd=2, off the protocol stream.

import { readSync, writeSync } from "node:fs";

// Largest body browser Native Messaging implementation accepts in one host->extension message, and the size of
// the single scratch buffer the whole stream flows through.
const FRAME_CHUNK = 1024 * 1024;
const MAX_RUN = FRAME_CHUNK - 2; // leave room for the framing `[` and `]` (or the two `"`)
const COMMA = 44; // ,
const OPEN_BRACKET = 91; // [
const CLOSE_BRACKET = 93; // ]
const DQUOTE = 34; // "

// Read exactly `n` bytes into buf[0..n). Over-read-safe only when buf.length
// === n (the read can't exceed the buffer; caller guarantees the stream has at
// least `n` bytes left for this message). `length` is the remaining-to-target
// count, so a single read never pulls bytes past `n`.
/** @param {Uint8Array} buf @param {number} n @returns {boolean} */
function readExact(buf: Uint8Array, n: number): boolean {
  let got = 0;
  while (got < n) {
    const r = readSync(0, buf, { offset: got, length: n - got });
    if (r <= 0) return false; // EOF or error
    got = got + r;
  }
  return true;
}

// Read exactly `n` bytes into buf[start..start+n). Over-read-safe: `length` is
// always `n - got`, so a single read can never pull bytes past `start+n` (and
// thus never into the next message).
/** @param {Uint8Array} buf @param {number} start @param {number} n @returns {boolean} */
function readAt(buf: Uint8Array, start: number, n: number): boolean {
  let got = 0;
  while (got < n) {
    const r = readSync(0, buf, { offset: start + got, length: n - got });
    if (r <= 0) return false;
    got = got + r;
  }
  return true;
}

// Write the whole buffer to stdout (fd=1), looping on partial writes. The
// offset form writes from `out[n..]`; `writeSync` returns the byte count.
/** @param {Uint8Array} out */
function writeAll(out: Uint8Array): void {
  let n = 0;
  while (n < out.length) {
    const w = writeSync(1, out, n);
    if (w <= 0) return; // error; nothing more we can do on this frame
    n = n + w;
  }
}

// Decode the little-endian uint32 length browser wrote as the first 4 bytes.
/** @param {Uint8Array} header @returns {number} */
function decodeLength(header: Uint8Array): number {
  return header[0] + header[1] * 256 + header[2] * 65536 + header[3] * 16777216;
}

// Debug telemetry to stderr (fd=2) so it never pollutes the stdout protocol
// stream. Encode the message to bytes and writeSync(2, …). The reporter noted
// stderr was the one part that didn't work in his hand-port — this makes it work.
/** @param {number} declaredLen */
function logFrameBodyRead(declaredLen: number): void {
  const msg = `[host] received ${4 + declaredLen} chars, declared body length ${declaredLen}\n`;
  // Encode the ASCII/UTF-8 message to bytes (the telemetry is ASCII-only).
  const bytes = new Uint8Array(msg.length);
  let i = 0;
  while (i < msg.length) {
    bytes[i] = msg.charCodeAt(i);
    i = i + 1;
  }
  let n = 0;
  while (n < bytes.length) {
    const w = writeSync(2, bytes, n);
    if (w <= 0) return;
    n = n + w;
  }
}

// Emit one frame: `[` + src[start..start+runLen) + `]`, built whole with an
// element loop and written in one go (no subarray / no array.copy).
/** @param {Uint8Array} src @param {number} start @param {number} runLen */
function emitRun(src: Uint8Array, start: number, runLen: number): void {
  // #2526: build the 4-byte LE length prefix + `[run]` body in ONE buffer and
  // write it with a SINGLE writeAll (one fd_write). Writing the prefix and body
  // as separate writes lets a streaming receiver misalign on pipe-chunk
  // boundaries — loopdive/js2#389 (ComponentizeJS works because it frames
  // atomically; we did not).
  const bodyLen = runLen + 2; // `[` + run + `]`
  const out = new Uint8Array(4 + bodyLen);
  out[0] = bodyLen & 0xff;
  out[1] = (bodyLen >> 8) & 0xff;
  out[2] = (bodyLen >> 16) & 0xff;
  out[3] = (bodyLen >> 24) & 0xff;
  out[4] = OPEN_BRACKET;
  let k = 0;
  while (k < runLen) {
    out[5 + k] = src[start + k];
    k = k + 1;
  }
  out[4 + runLen + 1] = CLOSE_BRACKET;
  writeAll(out);
}

// Emit one JSON-STRING frame: `"` + src[start..start+runLen) + `"`, built whole
// and written atomically. Used to re-chunk a single >1 MiB JSON string body
// (`"aaaa…"`) into a sequence of valid <=1 MiB JSON string frames. The receiver
// concatenates the interiors to reproduce the original string. (The element loop
// must not split a `\`-escape across frames; for the reported workload the body
// is plain printable characters, so a fixed MAX_RUN split is valid.)
/** @param {Uint8Array} src @param {number} start @param {number} runLen */
function emitStringRun(src: Uint8Array, start: number, runLen: number): void {
  const bodyLen = runLen + 2; // `"` + run + `"`
  const out = new Uint8Array(4 + bodyLen);
  out[0] = bodyLen & 0xff;
  out[1] = (bodyLen >> 8) & 0xff;
  out[2] = (bodyLen >> 16) & 0xff;
  out[3] = (bodyLen >> 24) & 0xff;
  out[4] = DQUOTE;
  let k = 0;
  while (k < runLen) {
    out[5 + k] = src[start + k];
    k = k + 1;
  }
  out[4 + runLen + 1] = DQUOTE;
  writeAll(out);
}

// Stream a single large JSON string body `"chars…"` into valid <=1 MiB `"run"`
// frames. The leading `"` has already been consumed; `interiorRemaining` counts
// the interior characters (declaredLen - 2), and the trailing `"` is read last.
// Returns false on EOF mid-frame. A fixed MAX_RUN split keeps each frame within
// the cap (no comma boundaries to honor, unlike the array path).
/** @param {Uint8Array} buf @param {number} interiorRemaining @returns {boolean} */
function streamLargeString(buf: Uint8Array, interiorRemaining: number): boolean {
  let remaining = interiorRemaining;
  while (remaining > 0) {
    let runLen = MAX_RUN;
    if (remaining < runLen) runLen = remaining;
    if (!readAt(buf, 0, runLen)) return false;
    emitStringRun(buf, 0, runLen);
    remaining = remaining - runLen;
  }
  return true;
}

export function main(): void {
  // Long-lived port loop: read framed JSON messages off stdin until EOF and
  // echo each one back as valid JSON within the browser 1 MiB per-message cap.
  const header = new Uint8Array(4);
  const one = new Uint8Array(1);
  const buf = new Uint8Array(FRAME_CHUNK); // reused read/window buffer

  while (true) {
    // 4-byte LE length prefix. EOF (or a zero-length frame) = clean shutdown.
    if (!readExact(header, 4)) break;
    const declaredLen = decodeLength(header);
    if (declaredLen === 0) break;
    logFrameBodyRead(declaredLen);

    if (declaredLen <= FRAME_CHUNK) {
      // Already a single valid JSON message within the cap — echo verbatim.
      // #2526: prefix + body in ONE buffer, ONE writeAll (one fd_write). Read
      // the body straight into the buffer at offset 4.
      const out = new Uint8Array(4 + declaredLen);
      out[0] = declaredLen & 0xff;
      out[1] = (declaredLen >> 8) & 0xff;
      out[2] = (declaredLen >> 16) & 0xff;
      out[3] = (declaredLen >> 24) & 0xff;
      if (!readAt(out, 4, declaredLen)) break;
      writeAll(out);
      continue;
    }

    // Large body > 1 MiB. Peek the first byte to pick the re-chunk shape:
    //   `"` → a single large JSON string  → `"run"` frames (streamLargeString);
    //   `[` → a large JSON array          → `[run]` frames (below).
    if (!readExact(one, 1)) break; // the opening `"` or `[`
    if (one[0] === DQUOTE) {
      // Large JSON string: interior = declaredLen - 2 (excludes the two `"`).
      if (!streamLargeString(buf, declaredLen - 2)) break; // EOF mid-frame
      if (!readExact(one, 1)) break; // the trailing `"`
      continue;
    }

    // Large JSON array `[elem,...,elem]`: stream the interior, emitting valid
    // `[run]` frames. The leading `[` is already consumed; the trailing `]` is
    // read last.
    let interiorRemaining = declaredLen - 2; // interior bytes (excludes `[` and `]`)
    let fill = 0; // carry bytes held at buf[0..fill) (a partial element, no comma)
    let truncated = false;

    while (interiorRemaining > 0) {
      const need = FRAME_CHUNK - fill; // fill the buffer exactly (over-read-safe)
      if (interiorRemaining >= need) {
        if (!readAt(buf, fill, need)) {
          truncated = true;
          break;
        }
        fill = FRAME_CHUNK;
        interiorRemaining = interiorRemaining - need;
        // Emit one frame up to the last comma within [0, MAX_RUN); carry the rest.
        let last = MAX_RUN;
        while (last > 0 && buf[last - 1] !== COMMA) last = last - 1;
        let runLen: number;
        let consumed: number;
        if (last === 0) {
          // No comma in [0, MAX_RUN): a single element exceeds the cap — emit
          // MAX_RUN raw (degenerate; only for elements > ~1 MiB).
          runLen = MAX_RUN;
          consumed = MAX_RUN;
        } else {
          runLen = last - 1; // exclude the comma at last-1
          consumed = last; // skip the comma too
        }
        emitRun(buf, 0, runLen);
        // Shift the leftover buf[consumed..fill) to the front (small for typical
        // element sizes — one element plus the 2 cap bytes).
        const rem = fill - consumed;
        let m = 0;
        while (m < rem) {
          buf[m] = buf[consumed + m];
          m = m + 1;
        }
        fill = rem;
      } else {
        // Final interior batch: read exactly interiorRemaining (exact-size temp,
        // over-read-safe), append to the carry, then drain to frames.
        const tmp = new Uint8Array(interiorRemaining);
        if (!readExact(tmp, interiorRemaining)) {
          truncated = true;
          break;
        }
        let t = 0;
        while (t < interiorRemaining) {
          buf[fill + t] = tmp[t];
          t = t + 1;
        }
        fill = fill + interiorRemaining;
        interiorRemaining = 0;
        // Drain buf[0..fill) into <=MAX_RUN frames at comma boundaries; the last
        // frame ends exactly at fill (the array has no trailing comma).
        let startPos = 0;
        while (startPos < fill) {
          let stop = startPos + MAX_RUN;
          if (stop >= fill) {
            stop = fill;
          } else {
            let c = stop;
            while (c > startPos && buf[c - 1] !== COMMA) c = c - 1;
            if (c > startPos) stop = c - 1;
          }
          emitRun(buf, startPos, stop - startPos);
          startPos = stop;
          if (startPos < fill && buf[startPos] === COMMA) startPos = startPos + 1;
        }
        fill = 0;
      }
    }
    if (truncated) break; // EOF mid-frame → stop
    if (!readExact(one, 1)) break; // the trailing `]`
  }
}

// Invoke the entry point. js2wasm compiles a top-level call into the module's
// `_start`, and under real `node` this runs the host loop directly. (The
// reporter noted the earlier bundled output never called main — this makes the
// entry explicit.)
main();
