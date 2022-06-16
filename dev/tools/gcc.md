GCC (GNU Compiler Collection)
=============================

Notes about the GCC family of compilers.

Since [GCC][gcc] doesn't contain only a compiler for a specific language,
I have to document it separately.


Resources
---------

 - [Web page][gcc]
 - [An Introduction to GCC](http://www.network-theory.co.uk/docs/gccintro/)
 - [GCC for New Contributors](https://gcc-newbies-guide.readthedocs.io/):
   A guide with an introduction to GCC architecture and tips for getting started
   with the project.  A useful material for compilers, too.

[gcc]:		https://gcc.gnu.org/


### Build ###

Nice notes from Solarian, both for [Ubuntu][gcc-ubuntu] and for [Mac OS X][gcc-mac].
The instructions are (they should be) almost the same.

In short:

 - Get sources (either from Git or a prepared archive).
 - Get necessary libraries

      * [mpc](http://www.multiprecision.org/)
      * [mpfr](http://www.mpfr.org/)
      * [gmp](http://gmplib.org/)
      * [isl](ftp://gcc.gnu.org/pub/gcc/infrastructure/)

 - Build libraries

      * mpc:  `--enable-cxx`

 - Build it!

NOTE:  I created some scripts to easily rebuild each library and GCC itself.


[gcc-ubuntu]:		https://solarianprogrammer.com/2016/10/07/building-gcc-ubuntu-linux/
[gcc-mac]:		https://solarianprogrammer.com/2016/05/10/compiling-gcc-6-mac-os-x/

### Warnings

Warnings of latest versions of GCC not covered by `-Wall -Wextra`:

 - `-Wduplicated-cond`
 - `-Wduplicated-branches`
 - `-Wlogical-op`
 - `-Wrestrict`
 - `-Wnull-dereference`
 - `-Wold-style-cast` (C++)
 - `-Wuseless-cast` (C++)
 - `-Wjump-misses-init`
 - `-Wshadow`
 - `-Wformat=2`: option is included in `-Wall` but can be made more aggressive.


Source: <https://kristerw.blogspot.nl/2017/09/useful-gcc-warning-options-not-enabled.html>
