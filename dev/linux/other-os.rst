=======================
Other Operating-Systems
=======================

Of course, there's not only Linux out there.  There are many other operating
systems for someone to consider as alternatives, especially if he/she cares
about studying them.

Minix
*****

Minix, of course, is the source of Linux, or the source of everything!
`Minix3 <http://www.minix3.org/>`_ is the 3rd version of the OS, but
it has diverged a lot from the original goal:  it is not anymore simple and
educational-friendly, but it is rather a normal micro-kernel, ready for
production.  Its aim is mainly safety.

Minix can be found in `Github <https://github.com/minix3/minix>`_, as well!


xv6
***

A rewrite of UNIX v6, using modern C and running on x86 platforms.
It is a simple kernel, useful for studying the internals of Unix and
operating-systems in general.

It compiles in a couple of seconds and is trivial to boot up in QEMU.

There is also an online book (stored locally) that describes the system,
and a book version with source code comments and line..

Some resources:
 o `xv6 <http://pdos.csail.mit.edu/6.828/2012/xv6.html>`
 o Source code:  `<git://pdos.csail.mit.edu/xv6/xv6.git>`
 o `Debugging Tips <http://pdos.csail.mit.edu/6.828/2012/labguide.html>`
 o `Manual <https://pdos.csail.mit.edu/6.828/2016/xv6/book-rev9.pdf`


XINU
****

Short for _Xinu Is Not Unix_, although it shares concepts and even names with
UNIX, the design of this OS differs completely.  It is a small, elegant OS
that supports dynamic process creation, dynamic memory allocation, network
communication, local and remote file systems, a shell, and device-independent
I/O functions.

Xinu is an academic product, coming out of the Perdue University.
Yet, because of its small size and the rich features, it has some adoption in
the industry, too.  It is suitable for embedded environments.

It comes with a textbook and source-code for ARM, MIPS, x86 versions.

Resources:
~~~~~~~~~~

 o `The XINU Page <https://xinu.cs.purdue.edu/>`


Redox
*****

A Unix-like Operating System written in Rust, aiming to bring the innovations
of Rust to a modern microkernel and full set of applications.

Actually, I read a very nice article, introduction to Redox, and got
immediately sold with it!  The article can be found at:
`Programming for Redox OS <https://dev.to/legolord208/programming-for-redox-os-4124>`.

Resources:
~~~~~~~~~~

 o `Redox <http://www.redox-os.org/>`


Google Fuchsia
**************

A new open-source, operating system by Google.  It is not based on Linux,
but on _Zicron_, a new microkernel.

It is meant to be used on embedded devices, smartphones, tables, and similar
IoT devices.

Resources:
~~~~~~~~~~

 o `Fuchsia Project <https://fuchsia.dev/>`


Sortix
******

An alternative, lightweight, POSIX implemenation.  

Some resources:
 o `Sortix <https://sortix.org/>`
