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


### Test Frameworks

 - [Cpp Unit Lite](http://wiki.c2.com/?CppUnitLite):
   Michael Feathers, the creator of CppUnit, got frustrated by its complexity,
   and wrote this minimal framework.

 - [cpputest](https://cpputest.github.io):
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

 - [Catch2](https://github.com/catchorg/Catch2):
   A modern, C++-native, header-only, test framework for unit-tests,
   TDD and BDD.

 - [Catch](https://github.com/philsquared/Catch):
   Great reviews, but need to check it in action. (obsolete)

 - [doctest](https://github.com/onqtam/doctest):
   Lighter version of Catch.
   A single-header testing framework for unit tests and TDD.
   It lets you define your own main functions and comes with support for BDD.



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

 - [TinyXML](https://github.com/leethomason/tinyxml2):
   A simple, small, minimal, C++ XML parser that can be easily integrating into
   other programs.

 - [NanoLog](https://github.com/PlatformLab/NanoLog)


### XML Libraries

 - [libxml2](http://xmlsoft.org/):
   The XML C parser and toolkit for Gnome

 - [libxml++](http://libxmlplusplus.sourceforge.net/):
   a wrapper for [libxml](http://www.xmlsoft.org/)

 - [Xerces-C++ XML Parser](https://xerces.apache.org/xerces-c/)


[//]:	# vim: ft=markdown spell
