Compilers
=========

Resources
---------

### Books

 - Compilers: Principles, Techniques, and Tools (Dragon Book)
   Alfred V. Aho  
   Addison-Wesley

 - Modern Compiler Design  
   D. Grune, H. Bal, C. Jacobs, K. Langendoen

 - Compiler Construction  
   Nicklaus Wirth

 - Advanced Compiler Design and Implementation  
   Steven Muchnick  
   Morgan-Kaufmann  
   978-1558603202  
   1558603204

 - Hacker's Delight  
   Henry S. Warren, Jr  
   Addison-Wesley, 2002  
   978-0201914658  
   0201914654

The following is a list suggested by [Bob Nystrom](https://twitter.com/munificentbob):

 - The Art of the Metaobject Protocol

 - Structure & Interpretation of Computer Programs

 - The Design & Evolution of c++

 - Build You Own LISP

 - Algorithms + Data Structures = Programs

 - writing an Interpreter in Go

 - Writing Compilers & Interpreters, 3/e
   Wiley

 - Lisp in Small Pieces

 - Programming Language Pragmatics

 - Engineering a Compiler, 2/e  
   Keith Cooper, Linda Torczon  
   Morgan-Kaufman  
   0-12-088478-X  
   978-0120884780

 - Types and Programming Languages

 - The Garbage Collection Handbook

 - Project Oberon:  The Design of an Operating System and Compiler

### Online

 - [Toolchain Resources](https://www.toolchains.net/):
   Many resources for building and using toolchains, with GCC, LLVM, ELF, DWARF,
   and many other resources.
 - [Resources for Amateur Compiler Writers][2]
 - [The Super Tiny Compiler](https://github.com/thejameskyle/the-super-tiny-compiler)
 - [The Super Tiny Compiler, in Go](https://github.com/hazbo/the-super-tiny-compiler)
 - [Crafting Interpreters](http://www.craftinginterpreters.com/), by Bob Nystrom:
   Online book, one of the best in the field.
 - [Beginner's Guide to Linkers](http://www.lurklurk.org/linkers/linkers.html)
 - [Let's Build a Compiler][1], Jack Crenshaw
   A Go version of this tutorial is at [Github](https://github.com/defrobo/crenshaw-go).
 - [Write you a programming language](https://github.com/stereobooster/write-you-a-programming-language):
   A list of small languages, which can be implemented either with a compiler or
   an interpreter, and can be used as educational material.

The following list is extracted from the [Resources for Amateur Compiler Writers][2]:

 - [What every compiler writer should know about programmers][4], by M. Anton Ertl
 - [A New C Compiler][5], by Ken Thompson
 - [A Tour Through the Portable C Compiler][6], by S.C. Johnson
 - [A Retargetable C Compiler][7] by David R. Hanson, Christopher W. Fraser.
   I have this book, I need to finish reading it some day!
 - [Compiler Construction][10], by Niklaus Wirth
 - [Post-Modern Compiler Design, vol.1](https://www.cs.purdue.edu/homes/rompf/pmca/vol1/)

 - [The Retargetable C Compiler (lcc)][8] (Github)
 - [The Portable C Compiler (PCC)][9]

### Tools

 - Lex/Flex

 - Yacc/Bison

 - [Syntax](https://github.com/DmitrySoshnikov/syntax):
   Yet another Parser Generator, this time written in JavaScript,
   that supports many languages, has an extensible plugin system,
   and can create many different parsers.  An introduction to the
   tool can be found at this [article][3].


[1]:	http://www.compilers.iecc.com/crenshaw/
[2]:	https://c9x.me/compile/bib/
[3]:	https://medium.com/@DmitrySoshnikov/syntax-language-agnostic-parser-generator-bd24468d7cfc
[4]:	https://c9x.me/compile/bib/ubc.pdf
[5]:	https://c9x.me/compile/bib/new-c.pdf
[6]:	https://c9x.me/compile/bib/pcc-tour.pdf
[7]:	http://www.amazon.com/Retargetable-Compiler-Design-Implementation/dp/0805316701
[8]:	https://github.com/drh/lcc
[9]:	http://pcc.ludd.ltu.se/
[10]:	https://c9x.me/compile/bib/wirthcc.pdf
