// Native Messaging host, compiled to standalone WASI by js2wasm — the RAW
// `wasi_snapshot_preview1` variant.
//
//   npx js2wasm examples/native-messaging/nm_wasi.ts --target wasi -o out
//
// This is the MOST honest pure-WASI-Preview-1 expression of the host: it imports
// `fd_read` / `fd_write` DIRECTLY from `wasi_snapshot_preview1` — the real WASI
// P1 core module a runtime such as wasmtime satisfies — with NO `node:fs` surface
// at all (loopdive/js2#389, the reporter is "not chasing Node.js"). The emitted
// module imports ONLY `wasi_snapshot_preview1`, owns + exports its own `memory`,
// and runs directly under wasmtime.
//
// Contrast with the sibling `nm_js2wasm.ts`, which uses `node:fs`
// `readSync`/`writeSync(fd, …)` — faithful Node fd-based IO that ALSO runs
// UNMODIFIED under real `node`. This file does NOT run under Node (it speaks raw
// WASI syscalls over linear memory); it is the pure-WASI counterpart.
//
// The raw WASI ABI: `fd_read`/`fd_write` take an **iovec** array in linear memory
// and a result-count pointer. We own linear memory and lay the iovec out
// ourselves with js2wasm's inline linear-memory accessors `store32`/`load32`/
// `store8`/`load8` (no GC roundtrip). Those accessors are NOT WASI host functions
// — no host provides a `store32` syscall — so they are imported from a distinct
// js2wasm INTRINSIC namespace, `"wasm:memory"` (they lower to inline
// `i32.store`/`i32.load`/… over the module's own memory). Only `fd_read`/
// `fd_write` come from `"wasi_snapshot_preview1"`, the real WASI core module, so
// the emitted module's ONLY import is `wasi_snapshot_preview1`.
//
//   fd_read (fd, iovs, iovs_len, nread)    -> errno   reads into iovs[0].{buf,len}
//   fd_write(fd, iovs, iovs_len, nwritten) -> errno   writes from iovs[0].{buf,len}
//
// Native Messaging protocol: each message is a 4-byte little-endian length prefix
// followed by a UTF-8 JSON body, exchanged over fd 0 (stdin) / fd 1 (stdout). See
//   https://developer.chrome.com/docs/extensions/develop/concepts/native-messaging
//
// This raw variant echoes a framed message verbatim: it reads the 4-byte LE
// length prefix, then the body, then writes the prefix + body straight back —
// byte-for-byte, including high and null bytes (a frame is an opaque byte run to
// the syscall layer). It streams through a single fixed linear-memory window, so
// resident memory stays flat regardless of message size. (The 64-MiB re-chunking
// the `node:fs` variant does for the browser 1-MiB cap is orthogonal to the raw
// syscall layer and omitted here to keep the pure-WASI example focused on the
// fd_read/fd_write ABI.)

import { fd_read, fd_write } from "wasi_snapshot_preview1";
import { store32, load32, store8, load8 } from "wasm:memory";

// js2wasm native i32 annotation — emits i32 locals + i32 arithmetic. The raw WASI
// pointers and lengths are all linear-memory i32 offsets.
type i32 = number;

// ---- linear-memory scratch layout (the module owns + exports `memory`) --------
// The default WASI memory is 3 pages (192 KiB). We reserve a small fixed control
// region at the base and stream the body through a window well clear of it.
const IOV: i32 = 0; // iovec[0] = { buf: i32 @0, buf_len: i32 @4 } (8 bytes)
const RESULT: i32 = 8; // nread / nwritten result slot (4 bytes)
const DATA: i32 = 64; // body window base (page-aligned headroom over the control region)
const WINDOW: i32 = 64 * 1024; // 64 KiB streaming window (fits in the 3-page default)

// Set iovec[0] = { buf, len } and zero the result slot, ready for one fd_read /
// fd_write of a single contiguous run.
function setIovec(buf: i32, len: i32): void {
  store32(IOV, buf);
  store32(IOV + 4, len);
  store32(RESULT, 0);
}

// Read up to `len` bytes from `fd` into linear memory at `buf`. Returns the byte
// count, or 0 on EOF / error (errno != 0). One raw `fd_read` over a 1-iovec list.
function readSome(fd: i32, buf: i32, len: i32): i32 {
  setIovec(buf, len);
  const errno: i32 = fd_read(fd, IOV, 1, RESULT);
  if (errno !== 0) return 0;
  return load32(RESULT);
}

// Read EXACTLY `n` bytes from `fd` into `buf`, looping over short reads. Returns
// false on EOF / error before `n` bytes arrive.
function readExact(fd: i32, buf: i32, n: i32): boolean {
  let got: i32 = 0;
  while (got < n) {
    const r: i32 = readSome(fd, buf + got, n - got);
    if (r <= 0) return false; // EOF or error
    got = got + r;
  }
  return true;
}

// Write EXACTLY `n` bytes from `buf` to `fd`, looping over partial writes. Returns
// false on error before `n` bytes are written.
function writeExact(fd: i32, buf: i32, n: i32): boolean {
  let put: i32 = 0;
  while (put < n) {
    setIovec(buf + put, n - put);
    const errno: i32 = fd_write(fd, IOV, 1, RESULT);
    if (errno !== 0) return false;
    const w: i32 = load32(RESULT);
    if (w <= 0) return false;
    put = put + w;
  }
  return true;
}

// Decode the little-endian uint32 the browser wrote as the first 4 bytes.
function decodeLength(p: i32): i32 {
  return load8(p) + load8(p + 1) * 256 + load8(p + 2) * 65536 + load8(p + 3) * 16777216;
}

// Re-encode `len` as a 4-byte LE prefix at `p` (so we write the frame back whole).
function encodeLength(p: i32, len: i32): void {
  store8(p, len & 0xff);
  store8(p + 1, (len >> 8) & 0xff);
  store8(p + 2, (len >> 16) & 0xff);
  store8(p + 3, (len >> 24) & 0xff);
}

export function main(): void {
  // Long-lived port loop: read framed messages off stdin (fd 0) and echo each one
  // back on stdout (fd 1) until EOF. The 4-byte prefix lives at DATA[0..4); the
  // body streams through DATA[4..4+window). A frame larger than the window is
  // echoed in window-sized runs (the receiver concatenates the raw bytes, so the
  // framing prefix + body are byte-identical to the input).
  const bodyBase: i32 = DATA + 4; // body bytes follow the 4-byte prefix slot
  const cap: i32 = WINDOW - 4; // bytes of body that fit after the prefix

  while (true) {
    // 4-byte LE length prefix. EOF (or a zero-length frame) = clean shutdown.
    if (!readExact(0, DATA, 4)) break;
    const declaredLen: i32 = decodeLength(DATA);
    if (declaredLen === 0) break;

    // Write the prefix back first (built whole from the decoded length).
    encodeLength(DATA, declaredLen);
    if (!writeExact(1, DATA, 4)) break;

    // Stream the body through the fixed window: read a run into the body window,
    // write it straight back, repeat until the whole declared body is echoed.
    let remaining: i32 = declaredLen;
    let truncated: boolean = false;
    while (remaining > 0) {
      let run: i32 = cap;
      if (remaining < run) run = remaining;
      if (!readExact(0, bodyBase, run)) {
        truncated = true;
        break;
      }
      if (!writeExact(1, bodyBase, run)) {
        truncated = true;
        break;
      }
      remaining = remaining - run;
    }
    if (truncated) break; // EOF mid-frame → stop
  }
}

// Invoke the entry point. js2wasm compiles a top-level call into the module's
// `_start`, which wasmtime runs.
main();
