RISC-V
======

[Rust] supports several RISC-V targets.  [Rust] targets are split into several
tiers, with different guarantees on support and stability.

 - `riscv64-unknown-linux-gnu`:
   Tier-2 with Host Tools, support for `std` running on Linux.
 - `riscv64gc-unknown-none-elf`
 - `riscv64imac-unknown-none-elf:
   Tier-2, can be used in bare-metal projects.
 - `riscv32i`
 - `riscv32imc`
 - `riscv32imac`
 - `risckv32-unknown-none-elf`:  32-bit Tier-2 targets, can be used in
   bare-metal projects.
 - `riscv32imc-esp-espidf`:  Tier-3 target that supports ESP RISC-V chips, like
   the `es-32-c3`.

The programs can be built with or without the `std` library.  Building `no-std`
applications is a complex topic.  An allocator is needed, if the application
requires a heap.

For a more detailed example, have a look at [NekoOS](https://github.com/NekoOS-Group/NekoOS),
a Rust-based RISC-V OS.

Cross-Compilation
-----------------

Cross-compiling requires a toolchain and libraries fot the target.
There are a variety of ways to cross-compile to RISC-V:

 - Use [cargo cros](https://github.com/rust-embedded/cross):
   Fastest and easiest way to get started.

 - Install cross-comiler packages from OS distribution.
   [Debian] has many _riscv64_ tools.

 - Build and install the official [riscv-gnu-toolchain].


[Debian]:	https://www.debian.org/
[Rust]:		https://www.rust-lang.org/
[riscv-gnu-toolchain]:	https://github.com/riscv-collab/riscv-gnu-toolchain
