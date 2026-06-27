// Native Messaging host, compiled to standalone WASI by js2wasm — the **Deno**
// synchronous-stdio variant.
//
//   npx js2wasm examples/native-messaging/nm_deno.ts --target wasi -o out
//
// `--target wasi` emits a SELF-CONTAINED WASI Preview-1 command module: it
// imports ONLY `wasi_snapshot_preview1` (fd_read / fd_write), owns + exports its
// own `memory`, and runs directly under a WASI host such as wasmtime — no Deno
// runtime, no JS host (#2684). This is the loopdive/js2#389 reporter's exact use
// case: a host that runs under a WASI host, explicitly "not chasing Node.js".
//
// This source uses REAL Deno synchronous fd-based IO — `Deno.stdin.readSync` /
// `Deno.stdout.writeSync` — so the SAME file ALSO runs UNMODIFIED under real
// `deno` (which provides the `Deno` namespace):
//
//   deno run --allow-read --allow-write examples/native-messaging/nm_deno.ts
//
// Deno's stdio primitives are fd-based and synchronous, mapping 1:1 to WASI:
//
//   Deno.stdin.readSync(p: Uint8Array): number | null   // bytes read, null @EOF
//   Deno.stdout.writeSync(p: Uint8Array): number         // bytes written (fd 1)
//   Deno.stderr.writeSync(p: Uint8Array): number         // bytes written (fd 2)
//
// `readSync` returns `null` at end-of-stream — the faithful EOF signal we use to
// terminate the port loop. js2wasm lowers the `number | null` result to the
// compiler's native nullable representation (no JS host needed), so `=== null`
// works in the standalone module exactly as it does under real Deno.
//
// Contrast with the siblings:
//   - `nm_js2wasm.ts` uses Node's `node:fs` `readSync`/`writeSync(fd, …)` — also
//     runs unmodified under real `node`.
//   - `nm_wasi.ts` imports `fd_read`/`fd_write` from `wasi_snapshot_preview1`
//     directly (the rawest pure-WASI expression, no runtime API surface).
// All three compile to the SAME pure-WASI-P1 shape; they differ only in which
// runtime's source-level API they additionally run under, unmodified.
//
// Native Messaging protocol: each message is a 4-byte little-endian length prefix
// followed by a UTF-8 JSON body, exchanged over fd 0 (stdin) / fd 1 (stdout). See
//   https://developer.chrome.com/docs/extensions/develop/concepts/native-messaging
//
// This host echoes each framed message verbatim — prefix + body, byte-for-byte
// (incl. high and null bytes). The body streams through a fixed-size window so
// resident memory stays flat regardless of message size: it never holds the whole
// body at once. Deno's `readSync`/`writeSync` fill/drain the WHOLE buffer passed
// to them (no offset/length options), so each read/write run uses an exact-size
// buffer.

// 64 KiB streaming window — the largest body run read/written in one step.
const WINDOW = 64 * 1024;

// Read EXACTLY `n` bytes off stdin (fd 0) into a fresh `n`-byte buffer, looping
// over short reads. Returns the buffer, or `null` at EOF / before `n` bytes
// arrive. The first read fills the result buffer directly; a short read tops it
// up via an exact-size temp (Deno fills the whole buffer it is handed, so we
// cannot pass an offset — we copy the tail in instead).
function readExact(n: number): Uint8Array | null {
  const buf = new Uint8Array(n);
  let got = 0;
  while (got < n) {
    if (got === 0) {
      const r = Deno.stdin.readSync(buf);
      if (r === null) return null; // EOF
      got = got + r;
    } else {
      const tmp = new Uint8Array(n - got);
      const r = Deno.stdin.readSync(tmp);
      if (r === null) return null; // EOF mid-buffer
      let i = 0;
      while (i < r) {
        buf[got + i] = tmp[i];
        i = i + 1;
      }
      got = got + r;
    }
  }
  return buf;
}

// Write the WHOLE of `out` to stdout (fd 1), draining partial writes. Deno writes
// the entire buffer it is handed and returns the count; on a partial write we
// continue with an exact-size copy of the unwritten tail (no subarray).
function writeFull(out: Uint8Array): void {
  let buf = out;
  while (buf.length > 0) {
    const w = Deno.stdout.writeSync(buf);
    if (w <= 0) return; // error; nothing more we can do on this frame
    if (w >= buf.length) return; // whole buffer written
    const rest = new Uint8Array(buf.length - w);
    let i = 0;
    while (i < rest.length) {
      rest[i] = buf[w + i];
      i = i + 1;
    }
    buf = rest;
  }
}

// Decode the little-endian uint32 the browser wrote as the first 4 bytes.
function decodeLength(header: Uint8Array): number {
  return header[0] + header[1] * 256 + header[2] * 65536 + header[3] * 16777216;
}

export function main(): void {
  // Long-lived port loop: read framed messages off stdin and echo each one back
  // on stdout until EOF. The body streams through the fixed window: a frame
  // larger than the window is echoed in window-sized runs (the receiver
  // concatenates the raw bytes, so prefix + body are byte-identical to the
  // input).
  while (true) {
    // 4-byte LE length prefix. EOF (or a zero-length frame) = clean shutdown.
    const header = readExact(4);
    if (header === null) return;
    const declaredLen = decodeLength(header);
    if (declaredLen === 0) return;

    // Echo the prefix back first.
    writeFull(header);

    // Stream the body through the window: read a run, write it straight back,
    // repeat until the whole declared body is echoed.
    let remaining = declaredLen;
    while (remaining > 0) {
      let run = WINDOW;
      if (remaining < run) run = remaining;
      const chunk = readExact(run);
      if (chunk === null) return; // EOF mid-frame → stop
      writeFull(chunk);
      remaining = remaining - run;
    }
  }
}

// Invoke the entry point. js2wasm compiles a top-level call into the module's
// `_start` (which wasmtime runs); under real `deno` this runs the host loop
// directly.
main();
