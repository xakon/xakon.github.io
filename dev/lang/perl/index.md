Perl
====

Resources
---------

 - [Perl's Home Page](http://www.perl.org):  documentation, source code, tutorials,
   mailing lists, and several important community projects.

 - [Perl.org Online Library](https://www.perl.org/books/library.html)
 - [Perl for Beginners](http://learn.perl.org/faq/begineers.html)
 - [Perl Development](http://dev.perl.org)
 - [CPAN][cpan]
 - [CPAN Search](http://search.cpan.org)
 - [MetaCPAN](http://metacpan.org)
 - [Free Blog Platform](http://blogs.perl.org)
 - [Perl Sphere](http://perlsphere.net)
 - [Perl Tricks](http://PerlTricks.com)
 - [Perl101](http://perl101.org/): Resources for beginners.
 - [Perl IronMan](http://ironman.enlightenedperl.com)
 - [Enlightened Perl Organization](http://enlightenedperl.com)
 - [Perl Weekly](http://perlweekly.com)
 - [Best Practical Solutions](http://bestpractical.com):  maintainer of RT.
 - [Perl Foundation](http://perlfoundation.org)


[cpan]:		http://www.cpan.org

### Communities

 - [Perl Mongers](http://www.pm.org/)
 - [Perl Monks](http://perlmonks.org/)
 - [The Perl Monastery](http://www.perlmonks.org)
 - [Perl Beginner's Site](http://perl-begin.org/)
 - Perl Porters

Other useful web sites might be:

 - [Functional Perl](http://functional-perl.org/)

### Books

 - [Perl in a Nutshell, 2/e](https://docstore.mik.ua/orelly/perl4/perlnut/):
   A rather old book, but a very nice tutorial on Perl.
   Available online by O'Reilly CD Bookshelf.
 - Learning Perl, 6/e, O'Reilly, [Accompanying site](http://www.learning-perl.com):
   The 3rd edition of the book is made available
   [online](https://docstore.mik.ua/orelly/perl4/prog/)
   by O'Reilly CD Bookshelf.
 - Programming Perl, 4/e, O'Reilly
 - Beginning Perl, O'Reilly
 - Intermediate Perl, O'Reilly
 - Mastering Perl, O'Reilly
 - Effective Perl Programming, 2/e, Addison-Wesley
 - Perl Medic, by Peter J. Scott
 - Higher Order Perl, by Mark J. Dominus
 - [Perl Cookbook, 2/e](https://docstore.mik.ua/orelly/perl4/cook/):
   A treasure of small and useful recipes.  Available online (thus easily
   searchable and usable as a reference), by O'Reilly CD Bookshelf.
 - [Minimal Perl](https://www.manning.com/books/minimal-perl), Manning:
   Shows how Perl can replace and become better than other tools, like `grep`,
   `sed`, and `awk`.

### Blogs

 - [Learning Perl](http://www.learning-perl.com/)
 - [Intermediate Perl](http://www.intermediateperl.com/)
 - [The Effective Perler](http://www.effectiveperlprogramming.com/)


Tools
-----

### `perldoc` ###

Access documentation both for Perl's core and any module.

The basic syntax is `perldoc Module::Name` and if the _Module_ is installed on
the system, its documentation will be displayed.  We can also see the builtin
functions with `perldoc -f rindex`, for example, and search for all of them
using the `perdoc perlfunc`.  This is especially useful as there are more than
220 builtin functions in Perl.

Some of its common usage:

 - `-q`:	search at Perl FAQ for relevant questions
 - `-f`:	documentation for built-in Perl function (`perlfunc`)
 - `-v`:	documentation for built-in Perl variable (`perlvar`)
 - `-l`:	shows the *path* to the file containing the documentation
 - `-m`:	display the entire *contents* of the module

Perl uses a documentation format called *POD* (Plain Old Documentation).
See `perldoc perlpod` for details.

#### Commonly Used Entries ####

 - `perl`:	Language overview, list of all other entries
 - `perltoc`:	Table of contents
 - `perlfunc`:	Built-in functions documentation
 - `perlvar`:	Predefined variables documentation
 - `perlref`:	References documentation
 - `perlre`:	Regex documentation
 - `faq`:	The Perl FAQ


### CPAN ###

There are many tools to work with [CPAN][cpan], either to download libraries or
upload new ones.  The most common tools are:

 - `cpan(1)`
 - `cpanm(1)`
 - [Module::CoreList](https://metacpan.org/module/Module::CoreList):
   A tool to list the libraries each Perl version is being distributed,
   where we can find another library and many other queries...
   It can also be found as a Web application, at the address:
   <http://corelist.rpee.be/>.


### Web Frameworks ###

 - dancer:
   Light-weight framework, ready to get into work as fast as possible.

 - catalyst:
   Heavy-weight framework, with lots of whistles.  It needs to load almost
   the half of CPAN!
