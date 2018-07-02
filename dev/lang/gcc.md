GCC (GNU Compiler Collection)
=============================

Notes about the GCC family of compilers.

Since [GCC][gcc] doesn't contain only a compiler for a specific language,
I have to document it separately.


[gcc]:		https://gcc.gnu.org/


Build
-----

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
