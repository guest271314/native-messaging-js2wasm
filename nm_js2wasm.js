// js2wasm Native Messaging host
// guest271314, ttraenkler, 6-5-2026
// https://github.com/loopdive/js2/issues/389
// bun build ./node_modules/@loopdive/js2/examples/native-messaging/nm_js2wasm.ts --target=node --outfile=nm_js2wasm.js
// node_modules/@loopdive/js2/examples/native-messaging/nm_js2wasm.ts
import { readSync, writeSync } from "node:fs";
var FRAME_CHUNK = 1024 * 1024;
var MAX_RUN = FRAME_CHUNK - 2;
var COMMA = 44;
var OPEN_BRACKET = 91;
var CLOSE_BRACKET = 93;
var DQUOTE = 34;
function readExact(buf, n) {
  let got = 0;
  while (got < n) {
    const r = readSync(0, buf, { offset: got, length: n - got });
    if (r <= 0)
      return false;
    got = got + r;
  }
  return true;
}
function readAt(buf, start, n) {
  let got = 0;
  while (got < n) {
    const r = readSync(0, buf, { offset: start + got, length: n - got });
    if (r <= 0)
      return false;
    got = got + r;
  }
  return true;
}
function writeAll(out) {
  let n = 0;
  while (n < out.length) {
    const w = writeSync(1, out, n);
    if (w <= 0)
      return;
    n = n + w;
  }
}
function decodeLength(header) {
  return header[0] + header[1] * 256 + header[2] * 65536 + header[3] * 16777216;
}
function logFrameBodyRead(declaredLen) {
  const msg = `[host] received ${4 + declaredLen} chars, declared body length ${declaredLen}
`;
  const bytes = new Uint8Array(msg.length);
  let i = 0;
  while (i < msg.length) {
    bytes[i] = msg.charCodeAt(i);
    i = i + 1;
  }
  let n = 0;
  while (n < bytes.length) {
    const w = writeSync(2, bytes, n);
    if (w <= 0)
      return;
    n = n + w;
  }
}
function emitRun(src, start, runLen) {
  const bodyLen = runLen + 2;
  const out = new Uint8Array(4 + bodyLen);
  out[0] = bodyLen & 255;
  out[1] = bodyLen >> 8 & 255;
  out[2] = bodyLen >> 16 & 255;
  out[3] = bodyLen >> 24 & 255;
  out[4] = OPEN_BRACKET;
  let k = 0;
  while (k < runLen) {
    out[5 + k] = src[start + k];
    k = k + 1;
  }
  out[4 + runLen + 1] = CLOSE_BRACKET;
  writeAll(out);
}
function emitStringRun(src, start, runLen) {
  const bodyLen = runLen + 2;
  const out = new Uint8Array(4 + bodyLen);
  out[0] = bodyLen & 255;
  out[1] = bodyLen >> 8 & 255;
  out[2] = bodyLen >> 16 & 255;
  out[3] = bodyLen >> 24 & 255;
  out[4] = DQUOTE;
  let k = 0;
  while (k < runLen) {
    out[5 + k] = src[start + k];
    k = k + 1;
  }
  out[4 + runLen + 1] = DQUOTE;
  writeAll(out);
}
function streamLargeString(buf, interiorRemaining) {
  let remaining = interiorRemaining;
  while (remaining > 0) {
    let runLen = MAX_RUN;
    if (remaining < runLen)
      runLen = remaining;
    if (!readAt(buf, 0, runLen))
      return false;
    emitStringRun(buf, 0, runLen);
    remaining = remaining - runLen;
  }
  return true;
}
function main() {
  const header = new Uint8Array(4);
  const one = new Uint8Array(1);
  const buf = new Uint8Array(FRAME_CHUNK);
  while (true) {
    if (!readExact(header, 4))
      break;
    const declaredLen = decodeLength(header);
    if (declaredLen === 0)
      break;
    logFrameBodyRead(declaredLen);
    if (declaredLen <= FRAME_CHUNK) {
      const out = new Uint8Array(4 + declaredLen);
      out[0] = declaredLen & 255;
      out[1] = declaredLen >> 8 & 255;
      out[2] = declaredLen >> 16 & 255;
      out[3] = declaredLen >> 24 & 255;
      if (!readAt(out, 4, declaredLen))
        break;
      writeAll(out);
      continue;
    }
    if (!readExact(one, 1))
      break;
    if (one[0] === DQUOTE) {
      if (!streamLargeString(buf, declaredLen - 2))
        break;
      if (!readExact(one, 1))
        break;
      continue;
    }
    let interiorRemaining = declaredLen - 2;
    let fill = 0;
    let truncated = false;
    while (interiorRemaining > 0) {
      const need = FRAME_CHUNK - fill;
      if (interiorRemaining >= need) {
        if (!readAt(buf, fill, need)) {
          truncated = true;
          break;
        }
        fill = FRAME_CHUNK;
        interiorRemaining = interiorRemaining - need;
        let last = MAX_RUN;
        while (last > 0 && buf[last - 1] !== COMMA)
          last = last - 1;
        let runLen;
        let consumed;
        if (last === 0) {
          runLen = MAX_RUN;
          consumed = MAX_RUN;
        } else {
          runLen = last - 1;
          consumed = last;
        }
        emitRun(buf, 0, runLen);
        const rem = fill - consumed;
        let m = 0;
        while (m < rem) {
          buf[m] = buf[consumed + m];
          m = m + 1;
        }
        fill = rem;
      } else {
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
        let startPos = 0;
        while (startPos < fill) {
          let stop = startPos + MAX_RUN;
          if (stop >= fill) {
            stop = fill;
          } else {
            let c = stop;
            while (c > startPos && buf[c - 1] !== COMMA)
              c = c - 1;
            if (c > startPos)
              stop = c - 1;
          }
          emitRun(buf, startPos, stop - startPos);
          startPos = stop;
          if (startPos < fill && buf[startPos] === COMMA)
            startPos = startPos + 1;
        }
        fill = 0;
      }
    }
    if (truncated)
      break;
    if (!readExact(one, 1))
      break;
  }
}
main();
export {
  main
};
