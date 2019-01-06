Assembly
========

x86 / x86-64
------------

 - [x86 Opcode and Instruction Reference](http://ref.x86asm.net/)
 - [Intel's x86 encoder/decoder](https://github.com/intelxed/xed):
   It also contains a list of x86 opcodes in non-PDF form.
 - [x86 Registers](http://www.eecg.toronto.edu/~amza/www.mindsec.com/files/x86regs.html)


## Assemblers

 - [GNU Assembler](https://www.gnu.org/software/binutils/)
 - [NASM, the Netwide Assembler](https://nasm.us)
 - [FASM, the Flat Assembler](http://flatassembler.net/)
 - [Yasm Modular Assembler Project](http://yasm.tortall.net/)


Resources
---------

 - [x86asm.net](http://x86asm.net/):
   Useful resources and articles.
 - [Compiler Explorer - C++](godbolt.org):
   A useful tool to see how small C snippets are converted into assembly
   code.  It supports both x86, x86-64, ARMv7.

After reading this [excellent article](http://nullprogram.com/blog/2016/11/17/)
on Assembly and Linux, I collected the following useful resources:

 - [Executable and Linking Format (ELF) Specification][elf-spec]:
   This is the binary format used by modern Unix-like systems, including Linux.
   A more convenient way to access this document is `man 5 elf`.
 - [Intel 64 and IA-32 Architectures Software Developer's Manual][asm64-spec] (vol. 2):
   This fully documents the instruction set and its encoding.
   It’s all the information needed to write x86 machine code by hand.
   The AMD manuals would work too.
 - [System V Application Binary Interface: AMD64 Architecture Processor Supplement][sysv-spec]:
   Only a few pieces of information are needed from this document, but more
   would be needed for a more substantial program.



[elf-spec]:	http://refspecs.linuxbase.org/elf/elf.pdf
[asm64-spec]:	http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html
[sysv-spec]:	https://github.com/hjl-tools/x86-psABI/wiki/x86-64-psABI-secure.pdf
