ANSI C/C++
==========

Notes regarding the 2 favourite and well-known, development languages.


Resources
---------

 - [clc-wiki](http://clc-wiki.net/):
   An offshoot of the [comp.lang.c](news:comp.lang.c) newsgroup.
   Plenty of references, tutorials, and other documentation and resources.
 - [Awesome C](https://porter.io/github.com/uhub/awesome-c):
   A curated list of C frameworks, libraries, and software.
 - [Project-based Tutorials in C](https://github.com/rby90/Project-Based-Tutorials-in-C):
   A curated list of project-based tutorials in C.
   Pick one of them, follow it and learn something new using ANSI C!
 - [System Programming Wiki](https://github.com/angrave/SystemProgramming/wiki):
   ANSI C is used as the main language for system's programming, therefore there
   is an extensive section dedicated to the language.


References
----------

Don't know why, but found this site [Poor man's Profiler][poorman] and thought
to document it.

[poorman]: http://poormansprofiler.org/


Books
-----

 - [Patterns in C](https://leanpub.com/patternsinc)


Compilers
---------

 - [GCC - The GNU Compiler Collection](https://gcc.gnu.org/)
 - [LLVM Compiler Infrastructure](http://llvm.org/).
   [Clang](http://clang.llvm.org/) is the C/C++/Objective-C compiler.
 - [OpenWatcom](http://openwatcom.org/)
 - [mold: A Modern Linker](https://github.com/rui314/mold/):
   Even though not a part of a compiler suite, the `mold` linker can be used as
   a drop-in replacement for `GNU ld`.  The savings in performance are enormous.


Static Analysis
---------------

Both [GCC](https://gcc.gnu.org/) and [LLVM](http://llvm.org/) can do excellent
work as static analysers.  But these compilers are not enough for such work.

 - _Clang Static Analyzer_:
   Part of _LLVM_, known also as _Clang Checker_, it can perform extra static
   analysis on the codebase and produce the results in HTML.
 - [PVS-Studio Analyzer](https://www.viva64.com/en/pvs-studio/):
   Maybe the best static analyzer that exists, but a commercial product.
   They offer though free licenses to open-source projects.
 - _Splint_:
   A modern linter for `C`, that can performs many more checks than the original
   linters.

### Memory Checkers ###

 - [Memcheck](http://valgrind.org/docs/manual/mc-manual.html):
   Part of [Valgrind](http://valgrind.org/), actually.
   It is very slow but can detect many problems, not only memory errors.
 - _Electric Fence_ and _DUMA_:
   They replace system's `malloc()` and `free()` and being able to detect memory
   problems much faster.


Test Tools
----------

 - [unity](http://throwtheswitch.org/white-papers/unity-intro.html) is a
   lightweight, C-only unit test framework.
 - [CppUTest](http://cpputest.github.io/) is a xUnit framework for C++.
   Of course, it could be used to test any C function/module is needed.
 - [check](https://libcheck.github.io/check/):
   Similar in spirit with JUnit, it works for `ANSI C`, and works by forking
   processes, to protect the runner against crashes during testing.
   It has very good integration with [CMake](https://cmake.org/)  and
   [GNU Autotools](https://www.gnu.org/software/autoconf/).
 - [CMocka](http://www.cmocka.org/):
   Unit-Test & Mock Framework.
 - [cmock](http://www.throwtheswitch.org/cmock/)
 - [CuTest](http://cutest.sourceforge.net/):
   C Unit Testing Framework
 - [snow](https://github.com/mortie/snow):
   Test framework for ANSI C.
   A header-only library that needs GNU extensions and at least C99 or C11 in
   order to be fully used.  It's syntax tries to resemble the Rspec syntax.


Style
-----

- [C Programming Substance Guidelines][substance]:
  Many guidelines collected into a single page.  Furthermore, there are also
  links to other online resources.

- A nice stylistic addition that expresses better the indent of the code
  when using `assert` statements, are the following new "nouns":

    #define NOT_YET_IMPLEMENTED() ASSERTMSG(FALSE, "Not yet implemented")
    #define SHOULD_NOT_HAPPEN()   ASSERTMSG(FALSE, "Should not happen")
    #define CANT_BE_NULL(p)       ASSERTMSG((p) != NULL, "NULL pointer!")

- Another nice stylistic change of checking of a `NULL` pointer.
  Instead of checking for `NULL` pointer, when it should be no such situation:

    obj = create_object();
    if (obj == NULL) {
       // some exception code here
    }
    obj.use_method();

  We can rewrite these statements using `assert` statements:

    obj = create_object();
    assert(obj != NULL);
    obj.use_method();

 - Fast and elegant way to use `malloc(3)` in C:

    struct frame {
       size_t width, height;
       unsigned char data[];
    };

    struct frame* f = malloc(sizeof(*f) + 3 * width * height);
    f-width = width;
    f->height = height;

   This is also an excellent example of allocating and initializing
   variable-size structures, something that is not allowed yet in C++.


[substance]: https://github.com/btrask/stronglink/blob/master/SUBSTANCE.md


Hacks
-----

### Swap Integer Variables

Actually, this post could be made in many other languages, but since most of
our modern languages derive from C, this is a common place to add it:
    a = a + b;
    b = a - b;
    a = a - b;

### Embed Binary Data in Executables

Source of these techniques this [article](https://csl.name/post/embedding-binary-data/)

#### GNU linker

```
   $ ld -r -b binary cat.png cat.o
   $ nm cat.o
   _cat_start
   _cat_end
   _cat_size
```

But it will place the data in the `RW` section.

We can use these symbols by having the following declarations in our code:

```c
extern const char cat_start;
extern const char cat_end;
extern const int cat_size;
```

#### Assembler

The following assembly code that uses the `incbin` directive of `nasm` will
add the contents of `cat.png` in the `RODATA` section.

```nasm
   bits	64

   section .rodata

   global _cat_start
   global _cat_end
   global _cat_size

   _cat_start:	incbin "cat.png"
   _cat_end:
   _cat_size:	dd $-_cat_start
```
