Libraries
=========

A point where C++ lacks behind other popular languages is with its standard library.
Although STL is really powerful and an excellent software from design perspective,
still it's minimal and we need to use many other libraries to accomplish our goals
fast and easy.

Here is a list of industry-based, strong-supported libraries:

### General Frameworks

 - [Boost](http://www.boost.org/)

 - [Poco](http://pocoproject.org/)

 - [ACE](http://www.cs.wustl.edu/~schmidt/ACE.html)

 - [APR](https://github.com/apache/apr):
   Apache Portable Runtime Library.

 - [Embedded Template Library](http://www.etlcpp.com/):
   A C++ template library for embedded applications.
   Most notably, it provides static-memory alternatives for STL containers and
   useful embedded software design elements.


### Test Frameworks

 - [Cpp Unit Lite](http://wiki.c2.com/?CppUnitLite):
   Michael Feathers, the creator of CppUnit, got frustrated by its complexity,
   and wrote this minimal framework.

 - [cpputest](https://cpputest.github.io):
   C /C++ based unit xUnit test framework for unit testing and for test-driving
   your code.  Simple in design and simple in use.  Portable to old and new
   platforms.  Build with Test-driven Development in mind

   Recommended by Robert C. (Uncle Bob) Martin, as a light-weight and complete
   C++ framework.

 - [CppUnit](http://cppunit.sourceforge.net/doc/):
   xUnit for C++ but I didn't read good things about it.

 - [CxxTest](http://cxxtest.com/)
   Minimal framework, using Perl to run the tests(!), xUnit compatible

 - [cpptest](http://cpptest.sourceforge.net)

 - [gtest](http://blog.coldflake.com/posts/gtest):
   Powered by Google, this test framework looks very promising.

 - [GTest/Gmock](https://github.com/google/googletest):
   The de-factor unit-test framework for years.
   Google has created amazing documentation around this framework, but also
   regarding testing in general.  Have a look at the following guides:
    * [Googletest Primer](https://google.github.io/googletest/primer.html)
    * [Advanced Topics](https://google.github.io/googletest/advanced.html)
    * [Mocking for Dummies](https://google.github.io/googletest/gmock_for_dummies.html)
    * [Mocking Cookbook](https://google.github.io/googletest/gmock_cook_book.html)
    * [Mocking Cheat Sheet](https://google.github.io/googletest/gmock_cheat_sheet.html)

 - [jctest](https://jcash.github.io/jctest/):
   A lightweight replacement (single-header library) for Google's GTest.

 - [Catch2](https://github.com/catchorg/Catch2):
   A modern, C++-native, header-only, test framework for unit-tests,
   TDD and BDD.

 - [Catch](https://github.com/philsquared/Catch):
   Great reviews, but need to check it in action. (obsolete)

 - [doctest](https://github.com/onqtam/doctest):
   Lighter version of Catch.
   A single-header testing framework for unit tests and TDD.
   It lets you define your own main functions and comes with support for BDD.

 - [crux](https://crux.galois.com/):
   A property-based tester, that uses **symbolic testing**, to find and isolate
   problems in the codebase.  It supports both C/C++ and Rust.


### Command-line ###

Many options for external libraries to parse command-line arguments:

 - [boost::program_options](https://github.com/boostorg/program_options):
   Straight-forward and high-level of quality level.  But, it comes with a huge
   cost of importing/linking the [Boost](http://www.boost.org/) libraries.
   If no other [Boost](http://www.boost.org/) is used, better to look for an
   alternative.

 - [GNU getopt](https://www.gnu.org/software/libc/):
   A C-based library, found and used in almost every GNU/Linux program.
   Yet, because its iterface is based on GNU C, it is rather primitive and
   verbose.

 - [cxxoptions](https://github.com/jarro2783/cxxopts):
   An elegant and powerful C++ library.

 - [Clara](https://github.com/catchorg/Clara):
   This library is included in the [Catch2](https://github.com/catchorg/Catch2)
   unit-testing framework and used to parse the command-line arguments in the
   test artificats.

   The project mentions that it is unmaintenained and replaced by
   [Lyra](https://github.com/bfgroup/Lyra).

 - [FTXUI](https://github.com/ArthurSonzogni/FTXUI):
   _Functional Terminal (X) User Interface_.  A simple C++ library for terminal-based
   user interfaces.


### Profiling ###

 - [speedscope](https://www.speedscope.app/):
   Creation of interactive flamegraphs out of a profile file.


### Web Frameworks ###

 - [Wt](https://www.webtoolkit.eu/wt/):
   C++ Web Toolkit.


### Cryptography ###

 - [Sodium](https://doc.libsodium.org/):
   A modern, easy-to-use software library for encryption, decryption,
   signatures, password hashing, and more.

### Utility Libraries

 - [Folly](https://github.com/facebook/folly/):
   Created by Facebook, it has a lot of high-performance classes to use
   (like, `fbvector`, `fbstring`).  It's also an excellent piece of software to
   read about C++ and improve my C++ skills, as well.

 - [fmtlib](http://fmtlib.net/):
   Small, safe and fast formatting library.
   It replaces the standard I/O stream library, resembling a safe alternative
   to the C-style `printf()`, with an interface similar to Python's
   `str.format()`.
   Source code is found at [Github](https://github.com/fmtlib/fmt).

 - [Proxygen](https://github.com/facebook/proxygen):
   An asynchronous HTTP server, again developed by Facebook.  Its performance is
   astonishing.

 - [StopWatch](https://github.com/KjellKod/Stopwatch):
   Timing utility, wraps C++11 `std::chrono` in an easy to use `StopWatch` utility.

 - [NanoLog](https://github.com/PlatformLab/NanoLog)


### Graphics ###

 - [Simple and Fast Multimedia Library (SFML)](https://www.sfml-dev.org/)
   Multi-platform (and multi-language, actually) multimedia library that
   provides access to various multimedia parts of a system.


### XML Libraries

 - [libxml2](http://xmlsoft.org/):
   The XML C parser and toolkit for Gnome

 - [libxml++](http://libxmlplusplus.sourceforge.net/):
   a wrapper for [libxml](http://www.xmlsoft.org/)

 - [Xerces-C++ XML Parser](https://xerces.apache.org/xerces-c/)

 - [TinyXML](https://github.com/leethomason/tinyxml2):
   A simple, small, minimal, C++ XML parser that can be easily integrating into
   other programs.


[//]:	# vim: ft=markdown spell
