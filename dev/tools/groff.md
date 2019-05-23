Troff/Groff
===========

Actually, this is a huge family of tools, with many variations and
complimentary utilities.  I will try to document as many as possible.


Groff
-----

Officially called _GNU troff_, people know it as _groff_.
The GNU re-implementation of the [troff](https://www.troff.org/) family of tools.

 - [Home Page](https://www.gnu.org/software/groff/)
 - [Troff Manual](https://www.troff.org/54.pdf),
   by Joseph Ossanna and Brian Kernighan  
   Publication from 1992, extensively revised by Brian Kernighan.


Manual Pages
------------

One of the main uses of _troff(1)_ is to format online manual pages for
programs, libraries, system calls, files, etc.  There are many packages for this
purpose:

 - [Groff man](http://man7.org/linux/man-pages/man7/groff_man.7.html)
 - [Groff_mdoc](http://man7.org/linux/man-pages/man7/groff_mdoc.7.html)
 - [BSD mdoc](http://mandoc.bsd.lv/)

Other resources on writing manual pages:

 - [Writing manual pages](https://liw.fi/manpages/)
 - [Writing manual pages (FreeBSD Journal)][freebsd-journal-article]

[freebsd-journal-article]:	 https://mydigitalpublication.com/publication/?i=571964&ver=html5&p=15

Notes
-----

_Groff_ and any typical _troff_ system consists of macro packages,
pre- and post-processors.

Some common macro packages are:

 - ms
 - mm
 - me
 - man:  Macro package used to format Linux man pages.
 - mdoc:  Macro package used to format BSD man pages.
 - mandoc:  Wrapper, to easily detect used macro package.
 - mom:
   As the traditional macro packages were tailored towards articles, technical
   reports and papers, `mom` tries to bring other publications to _troff_
   systems.

Some common pre-processors are:

 - tbl
 - eqn
 - pic
 - refer
 - grm

A _troff_ sources consists of _macros_ or _requests_, _escape sequences_ and
normal text.
