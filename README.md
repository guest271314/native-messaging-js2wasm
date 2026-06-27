## js2wasm Native Messaging host

### Install 

> [js2wasm](https://github.com/loopdive/js2)
>
> Direct AOT compilation from JavaScript and TypeScript to WebAssembly GC.

```shell
bun install --trust https://github.com/loopdive/js2
```
## Transpile, compile, bundle

### Transpile TypeScript to JavaScript
```shell
bun build ./node_modules/@loopdive/js2/examples/native-messaging/nm_js2wasm.ts --target=node --outfile=nm_js2wasm.js
```

```shell
bun build ./node_modules/@loopdive/js2/examples/native-messaging/nm_wasi.ts --no-bundle --outfile nm_wasi.js
```

### Compile JavaScript to WASM GC

```shell
bun ./node_modules/@loopdive/js2/src/cli.ts nm_js2wasm.js --wit --target wasi -o .
```

```shell
bun ./node_modules/@loopdive/js2/src/cli.ts nm_wasi.js --wit --target wasi -o .
```

### Compile TypeScript to WASM GC

```shell
bun ./node_modules/@loopdive/js2/src/cli.ts ./node_modules/@loopdive/js2/examples/native-messaging/nm_js2wasm.ts --wit --target wasi -o .
```

```shell
bun ./node_modules/@loopdive/js2/src/cli.ts ./nm_deno.ts --wit --target wasi -o .
```

### Bundle js2wasm

Alternatively bundle `./node_modules/@loopdive/js2/src/cli.ts` to standalone JavaScript and substitute `js2wasm.js` above

```shell
bun build ./node_modules/@loopdive/js2/src/cli.ts --target=node --minify --outfile=js2wasm.js 
```

### Installation and usage on Chrome and Chromium

1. Navigate to `chrome://extensions`.
2. Toggle `Developer mode`.
3. Click `Load unpacked`.
4. Select `native-messaging-js2wasm` folder.
5. Note the generated extension ID.
6. Open `nm_js2wasm.json` in a text editor, set `"path"` to absolute path of `nm_js2wasm.sh` (executes your local `wasmtime` or other WebAssembly runtime and the compiled `nm_js2wasm.js.wasm` or ``nm_js2wasm.wasm` file), and `chrome-extension://<ID>/` using ID from 5 in `"allowed_origins"` array; and make sure `wasmtime` is in `PATH` and `nm_js2wasm.sh` is executable.
7. Copy the `nm_js2wasm.json` file to Chrome or Chromium configuration folder, e.g., Chromium on \*nix `~/.config/chromium/NativeMessagingHosts`; Chrome dev channel on \*nix `~/.config/google-chrome-unstable/NativeMessagingHosts`.
8. To test click `service worker` link in panel of unpacked extension which is DevTools for `background.js` in MV3 `ServiceWorker`, observe echo'ed message from `js2wasm` Native Messaging host. To disconnect run `port.disconnect()`.

The Native Messaging host echoes back the message passed. 

For differences between OS and browser implementations see [Chrome incompatibilities](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Chrome_incompatibilities#native_messaging).

## License
Do What the Fuck You Want to Public License [WTFPLv2](http://www.wtfpl.net/about/)

