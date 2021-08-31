# WASM-C-API basic test

This repository is a sandbox to play around with wasm-c-api.

The chosen WASM runtime is: [WAMR](https://github.com/bytecodealliance/wasm-micro-runtime).

The X-platform building system is [cmake](https://cmake.org/).

# How to build this project
Install latest release of [WABT](https://github.com/WebAssembly/wabt/releases/tag/1.0.24), this repository is using it to compile wasm files.

```shell
$ mkdir build
$ cd build
$ cmake ..
$ cmake --build ..
```