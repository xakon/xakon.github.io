GCC
===

Resources
---------

 - [Web page][gcc]
 - [An Introduction to GCC](http://www.network-theory.co.uk/docs/gccintro/)
 - [GCC for New Contributors](https://gcc-newbies-guide.readthedocs.io/):
   A guide with an introduction to GCC architecture and tips for getting started
   with the project.  A useful material for compilers, too.

[gcc]:		https://gcc.gnu.org/


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
