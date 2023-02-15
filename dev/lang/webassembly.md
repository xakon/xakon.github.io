WebAssembly
===========

The WebAssembly is both an (assembly) language and a target.
We can use many languages to compile into a WebAssembly binary,
which we can also test it locally with the development tools.


Resources
---------

### Web ###

- [Home Page](http://webassembly.org/)


### Tutorials ###

 - [WebAssembly from Scratch: From FizzBuzz to DooM](https://github.com/diekmann/wasm-fizzbuzz):
   Exploring WebAssembly from scratch from a backend-person-point-of-view.
   A story in four acts.


Tools
-----

The gateway into WebAssembly is [Emscripten], an LLVM compiler toolchain that
produces WebAssembly from code.

We can clone the whole SDK from [Github](https://github.com/emscripten-core/emsdk.git),
install and activate it locally:

    ./emsdk install latest
    ./emsdk activate latest

Then, the whole toolchain is installed within the `emsdk/` directory and can be
used locally.

We can compile and run C++ programs like this:

    emcc hello.cpp -o hello.html
    emrun hello.html


[Emscripten]:	https://emscripten.org/
