NASM
====

[NASM, the Netwide Assembler](https://nasm.us) is a portable x86 assembler,
an alternative to [GNU Assembler](https://www.gnu.org/software/binutils/) for
Linux or BSD systems.  It can be used to write both 16-bit, 32-bit (IA-32)
and 64-bit (x86_64) programs.  It supports its own syntax, a variant of the
Intel syntax, instead of AT&T syntax, and has many interesting features.  It is
one of most popular assemblers for Linux, because of its simplicity and its
power.


Features
--------

### Sections

Specify the different sections of the binary with the `section` directive:

```nasm
section .data
   msg:		db "hello, world!"

section .text
```


### Macros

NASM supports both oneline macros, like in C preprocessor, and multiline macros:


```nasm
   %define argc		rsp + 8


   ; Check if we got at least 3 arguments
   mov		rax, [argc]
   cmp		rax, 3


%macro bootstrap
   push		ebp
   mov		ebp, esp
%endmacro


_start
   bootstrap


%macro __syscall_write 2
   mov		rax, 1
   mov		rdi, 1
   mov		rsi, %%str
   mov		rdx, %%strln
   syscall
%endmacro
```

#### Standard Macros

NASM supplies a set of handful macros to the developers:

 - `STRUC`:	Define data structures

 - `%include`:	Include and inline other assembly files
