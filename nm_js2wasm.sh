#!/usr/bin/env -S wasmtime -W gc=y,function-references=y,tail-call=y,exceptions=y /ABSOLUTE/PATH/TO/native-messaging-js2wasm/nm_js2wasm_wasi_p1.wasm
# Chrome launches the native messaging host by executing this script.
# Replace /ABSOLUTE/PATH/TO/ above with the real absolute path to this repo.
#
# Do NOT use -W all-proposals=y — it enables stack-switching which wasmtime
# rejects. Use the specific proposals listed in the shebang instead.
