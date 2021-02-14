Libraries
=========

A list of useful Java frameworks and libraries that I can use in projects.

Testing
-------

 - [JUnit](https://junit.org/):
   The standard xUnit implementation for Java.  Current version is
   [JUnit 5](https://junit.org/junit5/), but I am more familiar with the
   [JUnit 4](https://junit.org/junit4/) version.

 - [PIT](http://pitest.org/):
   A state of the art _mutation testing_ system, providing **gold standard test
   coverage** for Java and the JVM.  It's fast, scalable and integrates with
   modern test and build tooling.

   It works by mutating the bytecodes, it runs only the test cases that affect a
   given file, it can exclude certain patterns of code (like logging).

 - [Jester]:
   The original open-source mutation system for Java, but not actively
   maintained anymore.

 - [Simple Jester][Jester]:
   A variant of the original [Jester], by the same author, who describes it as
   easier to use, but slower.

 [Jester]:	http://jester.sourceforge.net/

Command-line Interface
----------------------

 - `gnu.getopt`
