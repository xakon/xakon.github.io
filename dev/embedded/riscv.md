RISC-V
======

A Free and Open RISC Instruction Set Architecture.


Resources
---------

 - [RISC-V](https://riscv.org/)
 - [RISC-V Specifications](https://riscv.org/specifications/)

 - [Forth.gr](https://riscv.ics.forth.gr/)
 - [QEMU](https://wiki.qemu.org/Documentation/Platforms/RISCV)
 - [Debian](https://wiki.debian.org/RISC-V)

 - [HiFive Unleashed](https://www.sifive.com/boards/hifive-unleashed)

 - [RISC-V Bytes](https://danielmangum.com/categories/risc-v-bytes/)
 - [RISC-V Tips](https://danielmangum.com/risc-v-tips/)

 - [RISC-V Guide](https://github.com/mikeroyal/RISC-V-Guide)


Projects
--------
 - [Adventures of OS: Making a RISC-V OS using Rust](http://osblog.stephenmarz.com/)
 - [Risc-V and Rust](https://github.com/takahirox/riscv-rust):
   A RISC-V emulator written in Rust and compiled into Webassembly.
   Plenty of resources and information.


Boards
------

 - Microchip's PolarFire SoC Icicle kit (includes 4 RISC-V cores)

Notes
-----

RISC-V architecture is extensible:  additional instructions can be added to
perform new operations.  Some extensions enable development of specialized
processors, such as _Secure Enclaves_ and _Trusted Execution Environments_.

RISC-V cores come in many shapes and sizes, since the ISA is flexible and
extensible.  There are 32-bit, 64-bit, and 128-bit versions of the core integer
instructions.

 - _rv32_ is the 32-bit configuration, suitable for micro-controllers and other
   small, low-power systems.
 - _rv64_ is the 64-bit general purpose, server class configuration.
   Linux RISC-V projects target the _rv64_ setup.
 - _rv128_ is mostly theoretical 128-bit configuration.

The RISC-V cores are also configurable using the instruction-set variants.
These variants add additional instructions to the core ISA.
Several variants have been officially standardized.  They are referenced by a
single letter code, such as `I`, `M`, and `C`.

 - `I` - Base integer instructions.  All RISC-V cores implement this.
 - `M` - Multiplication instructions.
 - `F` - Floating-point instructions.
 - `D` - Double-floating point instructions.
 - `C` - Compressed instructions.  Similar to ARMS's Thumb mode.
 - `G` - Shorthand for the set `IMAFD` variants.
 - `A` - Atomic instructions.  Enable multi-core systems to have consistent
	 views of memory.

A common class of micro-controller configuration is `rv32imc`, a 32-bit
processor with multiplier and compressed instructions.

The RISC-V configuration targeted by Linux distributions is typically the
`rv64gc`, although it is possible to run Linux on other configurations, too.

### Emulation ###

The easiest way to test RISC-V applications is by using [QEMU] and [Debian]
Quick Image Baker pre-baked images.  We can find such images at:
<https://people.debian.org/%7Egio/dqib/>.  For example, `riscv64-virt`.

Alternatively, we can use [buildroot] to test RISC-V programs.

### Rust ###

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

[buildboot]:	https://github.com/buildroot/buildroot
[Debian]:	https://www.debian.org/
[QEMU]:		https://www.qemu.org/
[Rust]:		https://www.rust-lang.org/
