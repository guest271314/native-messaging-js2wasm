import { fd_read, fd_write } from "wasi_snapshot_preview1";
import { store32, load32, store8, load8 } from "wasm:memory";
const IOV = 0;
const RESULT = 8;
const DATA = 64;
const WINDOW = 64 * 1024;
function setIovec(buf, len) {
  store32(IOV, buf);
  store32(IOV + 4, len);
  store32(RESULT, 0);
}
function readSome(fd, buf, len) {
  setIovec(buf, len);
  const errno = fd_read(fd, IOV, 1, RESULT);
  if (errno !== 0)
    return 0;
  return load32(RESULT);
}
function readExact(fd, buf, n) {
  let got = 0;
  while (got < n) {
    const r = readSome(fd, buf + got, n - got);
    if (r <= 0)
      return false;
    got = got + r;
  }
  return true;
}
function writeExact(fd, buf, n) {
  let put = 0;
  while (put < n) {
    setIovec(buf + put, n - put);
    const errno = fd_write(fd, IOV, 1, RESULT);
    if (errno !== 0)
      return false;
    const w = load32(RESULT);
    if (w <= 0)
      return false;
    put = put + w;
  }
  return true;
}
function decodeLength(p) {
  return load8(p) + load8(p + 1) * 256 + load8(p + 2) * 65536 + load8(p + 3) * 16777216;
}
function encodeLength(p, len) {
  store8(p, len & 255);
  store8(p + 1, len >> 8 & 255);
  store8(p + 2, len >> 16 & 255);
  store8(p + 3, len >> 24 & 255);
}
export function main() {
  const bodyBase = DATA + 4;
  const cap = WINDOW - 4;
  while (true) {
    if (!readExact(0, DATA, 4))
      break;
    const declaredLen = decodeLength(DATA);
    if (declaredLen === 0)
      break;
    encodeLength(DATA, declaredLen);
    if (!writeExact(1, DATA, 4))
      break;
    let remaining = declaredLen;
    let truncated = false;
    while (remaining > 0) {
      let run = cap;
      if (remaining < run)
        run = remaining;
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
    if (truncated)
      break;
  }
}
main();
