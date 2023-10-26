Projects
========

A list of project ideas and notes about them for future reference.

In this [page](https://github.com/255kb/stack-on-a-budget/) I can find many
services that provide free access for application deployment.

A draft list of project ideas:

 - [gtop](https://github.com/aksakalli/gtop):
   Implement this nice program in another language, certainly not in JavaScript!

 - [Blog](blog.html)

 - Integration Server:
   Define repositories, branches and check every single commit (by running some
   specified commands), automatically, on every branch change.  Notify user
   using email or other means.


 - [DNS Server](dns_server.html)

 - Create a simple Web Site using NGINX, at least to host some photos,
   and play with HTTPS and HTTP/2.  It's not going to be anything serious!

 - Build a Hackintosh!
   Why not?  It's also a nice and cheaper experience than having to buy a iMac.
   [Running Mac OS X 10.11.6 El Capitan on KVM + QEMU][kvm-ios]

 - A Blogging platform serving static content.
   I will need two different domains, one for administration (authors), one for readers.
   Use NGINX for static content.  Let authors decide on underlying format.
   Support Markdown, Asciidoc, reStructuredText.  Keep full history of articles
   and photos, don't let anybody accidentally delete them.  Call it epikara.tk
   and let authors write blog posts or longer articles (skepseis).  An
   article/post once posted is immutable, but before posting it, it should
   become a draft.  The author should be able to check all the versions of the
   article.

 - Use a monitor tool for all the machines.  A nice idea comes from this
   [article](http://reachtim.com/articles/psutil-and-mongodb-for-system-monitoring.html).
   Adapt it to my needs and requirements and use it from a central point.
   For example, have CEID collect or redirect data to every host I manage.

 - Study [Perl](perl.org) and try to hack it.

 - Play with vimcat.

 - `mgit`:  a wrapper around `git` to perform the same actions on multiple
   repositories, grouped as _projects_.  Inspired by:
   [hgit](https://github.com/dfithian/hit).

 - Write a Scheme/Lisp implementation using some examples:
      * <https://dev.to/ericnormand/the-idea-of-lisp>
      * <http://norvig.com/lispy.html>


### Freelancing ###

In case I ever needed, here are a few interesting articles about becoming a
freelancer:

 - <https://doubleyourfreelancing.com/category/start-freelancing/>


### Source-Code Reading ###

Source-code reading is invaluable to learn writing code.
There are plenty of useful and interesting projects, where I can learn a lot by
styling their code.

Some examples follow:

 - [NetBSD][netbsd]:
   The source code that Spinellis is using in the book "Reading Code".
   Also, [OpenBSD][openbsd] has minimal implementations, and many times these
   implementations are considered as a point of reference.
   Alternatively, [FreeBSD][freebsd] comes with full and complete
   implementations.

 - [Minix][minix]:
   A Unix-like system implemented for studying!
   Even though there are 3 versions of it, I think the first is the most
   educational one, the other 2 are meant for the industry.

 - [xv6]:
   Similarly to [Minix][minix], it contains a whole UNIX-line operating system in
   minimum form, in order to easier study it, as part of MIT's educational
   course on Operating Sources.

   A Rust-based port exists under the
   name [rxv6](https://github.com/dancrossnyc/rxv64).

 - [SQLite][sqlite]:
   Amazing project, with high-quality source code.

 - [Fossil][fossil]:
   From the same author of [SQLite][sqlite] (Richard Hipp), an excellent example
   of software, but also high-quality of C code.

 - [Trac][trac]:
   A Python-based project, inspired from ideas from Richard Hipp.
   Interesting to read about it.

 - [Tcl/Tk][tcltk]:
   An amazing language, but also a software project, lead by John Ousterhout.

 - [PostgreSQL][postgres]:
   Excellent quality of source-code.  As mentioned in an
   [article](https://www.2ndquadrant.com/en/blog/postgresql-is-the-worlds-best-database/)
   about [PostgreSQL][postgres], the source code is full of documentation, TDD,
   and many people learned working with C, just by studying the project.

 - [Apache Web Server][apache]

 - [OpenSSH][openssh]:  The major implementation of the SSH protocol.
   I am mostly interesting on how the SSH client reads the user's configuration,
   how it maintains channels over the connections, how it works with the
   `ssh-agent`.

 - [Perl][perl]

 - [Python][python]

 - [Node.js][nodejs]: <https://nodejs.org/>


[netbsd]:	http://netbsd.org/
[openbsd]:	https://www.openbsd.org/
[freebsd]:	https://www.freebsd.org/
[minix]:	http://www.minix3.org/
[xv6]:		https://pdos.csail.mit.edu/6.828/2019/xv6.html
[sqlite]:	https://sqlite.org/
[fossil]:	http://fossil-scm.org/
[trac]:		https://trac.edgewall.org/
[tcltk]:	https://www.tcl-lang.org/
[postgres]:	https://www.postgresql.org/
[perl]:		https://www.perl.org/
[python]:	https://www.python.org/
[apache]:	https://httpd.apache.org/
[nodejs]:	https://github.com/nodejs/node
[openssh]:	https://www.openssh.com/


### Exercises

Some sites provide excellent ideas for project or course exercises:

 - [exercism.io](http://exercism.io/)
 - [cryptorals](https://cryptopals.com/)
 - [HackerRank](https://www.hackerrank.com/)
 - [Synacor Challenge](https://challenge.synacor.com/):
   From the creator of Code Advent.
 - [Code Academy](https://www.codecademy.com/)
 - [Code Combat](https://codecombat.com/)
 - [Code Wars](https://www.codewars.com/)
 - [The Python Challenge](http://www.pythonchallenge.com/)
 - [Python Project Projects](http://pythonpracticeprojects.com/)
 - [IBM Ponder This](https://www.research.ibm.com/haifa/ponderthis/):
   Monthly programming challenges.

Some other ideas for projects can be found at <https://github.com/karan/Projects>.


### Katas/Dojos

 - <http://codingdojo.org/>
 - <http://codingdojo.org/kata>
 - [Code Katas](http://www.codekatas.org/)
 - [CodeKata](http://codekata.com/)
 - [Cyber Dojo](https://cyber-dojo.org/)


### Challenges

List compiled from the following article:
   <https://medium.freecodecamp.com/the-10-most-popular-coding-challenge-websites-of-2016-fb8a5672d22f>

 - [TopCoder](https://www.topcoder.com/)
 - [CoderByte](https://coderbyte.com)
 - [Project Euler](https://projecteuler.net)
 - [HackerRank](https://www.hackerrank.com/)
 - [CodeChef](https://www.codechef.com)
 - [CodeEval](https://www.codeeval.com)
 - [CodeWars](https://www.codewars.com)
 - [LeetCode](https://leetcode.com)
 - [Sphere Online Judge (SPOJ)](http://www.spoj.com)
 - [CodinGame](https://www.codingame.com/start)
 - [Kattis](https://open.kattis.com/)
 - [Coding Game](https://www.codingame.com/)
 - [Photohackers](https://protohackers.com/):
   Write network servers to implement network protocols as exercises.
 - [Coding Challenges](https://codingchallenges.fyi/):
   A collection of small to large projects to build, presented in steps and
   further explanations.  A nice candidate for ideas on projects to work.


Resources
---------

 - <http://www.tonymacx86.com/>
 - <http://www.admin-magazine.com/Articles/Getting-a-free-TLS-certificate-from-Let-s-Encrypt>
 - [Running Mac OS X 10.11.6 El Capitan on KVM + QEMU][kvm-ios]
 - [RFC 783 - TFTP](https://tools.ietf.org/html/rfc783)


[kvm-ios]:	https://github.com/kholia/OSX-KVM
