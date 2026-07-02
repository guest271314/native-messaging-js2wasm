import { $ } from "bun";
const decoder = new TextDecoder();
const hosts = ["wasi_p1", "node_fs", "node_process", "deno"];
{
  console.log(`\u001b[32mInstalling js2wasm\u001b[0m\r\n`);
  const { stdout, stderr, exitCode } = await $`
    bun install --trust https://github.com/loopdive/js2
  `.nothrow().quiet();

  if (exitCode !== 0) {
    console.log(`Non-zero exit code ${exitCode}`);
  }

  console.log(decoder.decode(stdout));
  console.log(decoder.decode(stderr));
}
for (const host of hosts) {
  console.log(`\u001b[32mBuilding nm_js2wasm_${host}.ts\u001b[0m\r\n`);
  const target = host.includes("wasi") ? "--no-bundle" : "--target=node" ;
  const { stdout, stderr, exitCode } = await $`
    bun build ./node_modules/@loopdive/js2/examples/native-messaging/nm_js2wasm_${host}.ts ${target} --outfile nm_js2wasm_${host}.js
    bun ./node_modules/@loopdive/js2/src/cli.ts ./nm_js2wasm_${host}.js --verbose --wit --target wasi -o .
  `.nothrow().quiet();

  if (exitCode !== 0) {
    console.log(`Non-zero exit code ${exitCode}`);
  }

  console.log(decoder.decode(stdout));
  console.log(decoder.decode(stderr));
}