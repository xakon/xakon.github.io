ANSI C++
========

## Resources

 - [ISO C++](https://isocpp.org/):
   Almost official site for C++.
 - [C++ Reference](http://en.cppreference.com/w):
   There is also an off-line version, with different formats, even man(1) pages.
 - [C & C++ Programming](http://www.cprogramming.com/):
   Plenty of resources, one of the oldest projects.
 - [cplusplus.com](http://www.cplusplus.com/):
   General information about the C++ language, a reference, tutorial, and an
   articles section.
 - [LearnCpp.com](http://www.learncpp.com/):
   Tutorials to help you master C++ and Object-Oriented Programming.
 - [ISO C++ Core Guidelines](https://github.com/isocpp/CppCoreGuidelines)
 - [C++ Samples](http://cppsamples.com/)
 - [C++ Draft](http://eel.is/c++draft/)
 - [Boost Best Practices](https://svn.boost.org/trac/boost/wiki/BestPracticeHandbook)
 - [The Boost C++ Libraries](http://theboostcpplibraries.com/)
 - [Practical Guide to Bare Metal C++](https://arobenko.gitbooks.io/bare_metal_cpp/)
 - [Collection of Modern C++ resources](https://github.com/rigtorp/awesome-modern-cpp)
 - [List of C/C++ frameworks, libraries, resources](https://github.com/fffaraz/awesome-cpp)
 - [Modern C++ Features](https://github.com/AnthonyCalandra/modern-cpp-features)
 - [C++ Best Practices](https://github.com/lefticus/cppbestpractices.git)


### Books

 - [A Tour of C++](http://isocpp.org/tour):
   Also in paper form, I have bought this book from Stroustrup.
 - The C++ Programming Language 4/e
 - C++ Primer 5/e
 - The C++ Standard Library 2/e
 - Code Complete
 - Effective C++
 - More Effective C++
 - Effective Modern C++
 - Exceptional C++
 - More Exceptional C++
 - Modern C++ Design
 - Modern C++ Cookbook
 - Effective STL
 - C++17 STL Cookbook
 - C++ Template Metaprogramming
 - [C++ Templates: The Complete Guide 2/e](http://tmplbook.com/)
   David Vandevoorde, Nicolai Josuttis, Douglas Gregor
 - Modern C++ Programming with Test-Driven Development  
   Jeff Langr  
   Pragmatic Bookshelf  
 - [C++ Annotations](http://www.icce.rug.nl/documents/cplusplus/):
   Free book, covering all C++ versions, since C++98.
   Available in HTML, PDF, Postscript formats.
 - [The Boost C++ Libraries](https://theboostcpplibraries.com/)
 - [Open Data Structures (in C++)](http://opendatastructures.org/ods-cpp/)
 - [Introduction to Design Patterns in C++ with Qt4][qt4-patterns]
 - [How to Think Like a Computer Scientist: C++](http://greenteapress.com/thinkcpp/)
 - [An Introduction to GCC](http://www.network-theory.co.uk/docs/gccintro/)
 - [The Rook's Guide to C++](https://rooksguide.org/)
 - [C++ GUI Programming with Qt3][qt3-gui]
 - [Cross-Platform GUI Programming with wxWidgets][wxwidget-gui]

More notes about the free, online books can be found at this article:
   <https://www.ossblog.org/master-c-programming-with-open-source-books/>

[qt4-patterns]:	http://www.informit.com/store/introduction-to-design-patterns-in-c-plus-plus-with-9780131879058
[qt3-gui]:	http://www.informit.com/store/c-plus-plus-gui-programming-with-qt-3-9780131240728
[wxwidget-gui]:	http://www.informit.com/store/cross-platform-gui-programming-with-wxwidgets-9780131473812


## Compilers

 - [GCC](http://gcc.gnu.org)
 - [LLVM](http://llvm.org/)
 - [zapcc](https://www.zapcc.com/):  A faster C++ compiler.


## Online Compilers

Lately it has become a trend to have online compilers and test/compile/run
snippets or whole files of code.  This is a small list of them.
An extensive list can be found at [Github](https://github.com/arnemertz/online-compilers).

 - [Wandbox](http://melpon.org/wandbox)
 - [Compiler Explorer - Godbolt](http://godbolt.org)
 - [Coliru](http://coliru.stacked-crooked.com)


## Package Managers

Yes, there is such thing as _Package Managers_ for C++ anymore!

 - [biicode](https://biicode.github.io/biicode/)
 - [Conan](https://conan.io/)


## Documentation Generators

 - [doxygen][doxygen]:
   Generate documentation from inlined doc-comments of the source code.
 - [doxyrest](https://github.com/vovkos/doxyrest):
   Convert [doxygen][doxygen] output into reStructuredText to use it with [Sphinx][sphinx].
 - [doc++](http://docpp.sourceforge.net/)
 - [DXR](https://dxr.readthedocs.io/):
   Mozilla tool to cross-reference huge projects.


## Static Analyzers

 - [CppDepend](https://www.cppdepend.com/)
 - [SciTools](https://scitools.com/support/what-is-understand/):
   Code Visualizer.
 - [SourceTrail](https://www.sourcetrail.com/):
   Cross-platform source explorer for C/C++, Java.

## Debuggers

 - GDB
 - DDD
 - LLDB
 - [UndoDB](http://undo-software.com/) from Undo Software.


## Profilers

 - perf:  take samples from a process' stack.
   It comes with kernel development, but can be used with any user-space
   application.  We can visualize the results with [flame graphs][flame-graphs].

 - [BCC - Tools for BPF-based Linux I/O analysis](https://github.com/iovisor/bcc).


[doxygen]:	http://www.stack.nl/~dimitri/doxygen/
[sphinx]:	http://www.sphinx-doc.org/


## IDEs

 - [Code::Blocks](http://www.codeblocks.org/)
 - [Eclipse](http://www.eclipse.org/)


## Various Topics

### MetaProgramming

 - [Template Metaprogramming in C++][1]

[1]: http://alejandrohitti.com/2015/06/21/template-metaprogramming-in-cpp/


### Libraries

See separate page.


### Memory Debuggers

I got this list from this [Computer World article][compworld] and I certainly
need to evaluate it.

 - [dmalloc](http://dmalloc.com)
 - [Electric Fence](https://launchpad.net/ubuntu/+source/electric-fence/)
 - [memwatch](http://www.linkdata.se/sourcecode/memwatch/)
 - [mtrace](http://www.gnu.org/software/libc/):
   Part of the GNU libc project.
 - [Memcheck](http://valgrind.org/docs/manual/mc-manual.html):
   Part of [Valgrind](http://valgrind.org/), actually.


[compworld]:	http://www.computerworld.com/article/3003957/linux/review-5-memory-debuggers-for-linux-coding.html
[flame-graphs]:	http://www.brendangregg.com/flamegraphs.html


[//]:	# vim: ft=markdown spell
