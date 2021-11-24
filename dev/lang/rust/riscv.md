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

[Rust]:		https://www.rust-lang.org/
