GNU Assembler
=============

The [GNU Assembler](https://www.gnu.org/software/binutils/) is the default
assembler used in Linux systems.  With the GNU Assembler we can write 16-bit,
32-bit (IA-32) and 64-bit (x86_64) programs, but it supports many other
architectures, as well. Naturally, it can build many types of object files.
It uses the AT&T syntax.


Comments
--------

GNU assembler supports 3 types of comments:

 - `#`:		single-line comments
 - `//`:	single-line comments
 - `/*`, `*/`:	multi-line comments
```

Registers
---------

Prefix registers with `%`, direct values with `$`.

Instructions
------------

It uses suffixes to the Intel instructions to specify the types of the operands:

 - `b`:		1 byte operand (byte)
 - `w`:		2 byte operand (word)
 - `l`:		4 byte operand (long)
 - `q`:		8 byte operand (quad-word)
 - `t`:		10 byte operand 
 - `o`:		16 byte operand 

So, if we are loading a 16-bit value from memory in `AX`, the syntax is:

```
   movw		(%rsi), %ax
```

Sections
--------

Sections are defined with the `.section` keyword:

```
.data
   var1:	.byte 10
   part:	.asci "Hello," 
   msg:		.asciz "Hello, world!" 
   msg:		.string "Hello, world!" 

.text
   .globl _main
```
