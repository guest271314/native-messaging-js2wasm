## js2wasm Native Messaging host

### Install 

> [js2wasm](https://github.com/loopdive/js2)
>
> Direct AOT compilation from JavaScript and TypeScript to WebAssembly GC.

```shell
bun install --trust https://github.com/loopdive/js2
```

### Hosts

- `nm_js2wasm_wasi_p1.ts`
> Raw WASI Preview 1 syscalls over linear memory  | `wasi_snapshot_preview1` (`fd_read`/`fd_write`) + `wasm:memory` (intrinsic, lowers inline) | **sync** blocking `fd_read`/`fd_write` loop | only `wasi_snapshot_preview1` | `wasmtime` / `wasmer` / `wazero`| standalone WASI P1 command module (owns + exports its own `memory`)
- `nm_js2wasm_node_fs.ts` 
> Node synchronous `node:fs` fd IO | `node:fs` (`readSync`/`writeSync`) | **sync** `readSync`/`writeSync` read-until loop | only `wasi_snapshot_preview1` (inlined); or a `node:fs` interface with `--link node:fs` | `wasmtime` **and** unmodified under real `node` | standalone WASI P1 command module (or a `node:fs`-linkable module)
- `nm_js2wasam_node_process.ts`
> Node async streaming stdio | `process.stdin` (global) Readable + `process.stdout.write` | **async** event-driven `'data'`/`'end'`, incremental framing | only `wasi_snapshot_preview1` | `wasmtime` (drives the injected fd0 reactor / event loop) | standalone WASI P1 command module with an event loop 
- `nm_js2wasm_deno.ts`
> Deno stdio surface (`Deno.stdin`/`Deno.stdout`) | _(lands separately)_ | sync (`readSync`/`writeSync`) | _(WASI-targeted; filled in when it lands)_| Deno / a WASI runtime | standalone WASI module

See [Five hosts, one wire protocol — a comparison](https://github.com/loopdive/js2/tree/main/examples/native-messaging#five-hosts-one-wire-protocol--a-comparison).

### Transpile TypeScript to JavaScript, compile JavaScript to WASM GC

```shell
bun build ./node_modules/@loopdive/js2/examples/native-messaging/nm_js2wasm_wasi_p1.ts --no-bundle --outfile=nm_js2wasm_wasi_p1.js
```

```shell
bun ./node_modules/@loopdive/js2/src/cli.ts nm_js2wasm_wasi_p1.js --wit --target wasi -o .
```

#### Compile all hosts

```shell
bun compile_hosts.js
```

### Bundle js2wasm to single script

```shell
bun build ./node_modules/@loopdive/js2/src/cli.ts --target=node --minify --outfile=js2wasm.js 
```

### Installation and usage on Chrome and Chromium

1. Navigate to `chrome://extensions`.
2. Toggle `Developer mode`.
3. Click `Load unpacked`.
4. Select `native-messaging-js2wasm` folder.
5. Note the generated extension ID.
6. Open `nm_js2wasm.json` in a text editor, set `"path"` to absolute path of `nm_js2wasm.sh` (executes your local `wasmtime` or other WebAssembly runtime and the compiled `nm_js2wasm_wasi_p1.wasm` or `nm_js2wasm_<node|fs|node_process|deno>.wasm` file), and `chrome-extension://<ID>/` using ID from 5 in `"allowed_origins"` array; and make sure `wasmtime` is in `PATH` and `nm_js2wasm.sh` is executable.
7. Copy the `nm_js2wasm.json` file to Chrome or Chromium configuration folder, e.g., Chromium on Linux `~/.config/chromium/NativeMessagingHosts`; Chrome dev channel on Linux `~/.config/google-chrome-unstable/NativeMessagingHosts`.
8. To test click `service worker` link in panel of unpacked extension which is DevTools for `background.js` in MV3 `ServiceWorker`, observe echo'ed message from `js2wasm` Native Messaging host. To disconnect run `port.disconnect()`.

The Native Messaging host echoes back the message passed. 

For differences between OS and browser implementations see [Chrome incompatibilities](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Chrome_incompatibilities#native_messaging).

## License
Do What the Fuck You Want to Public License [WTFPLv2](http://www.wtfpl.net/about/)

