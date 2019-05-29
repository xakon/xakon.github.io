Libraries
=========

Some Perl or Perl-compatible libraries I may need to use in the future.

I have a problem to distinguish which libraries belong to a "basic"
Perl installation, which are considered standard (and therefore we can
find them installed by default in many distributions), and which libraries
need to be installed from CPAN.  If you see any inconsistencies in the future
about a library's scope, just fix it!

Core Libraries
--------------

 - `Log::Any`:  General interface for logging with specialized adapters,
   like `STDERR`, `syslog`, `Log4stash` and others.  These are implemented
   in `Log::Any::Adapters`.

 - `Term::ANSIColor`:  Constants and functions to easily output ANSI colored
   text to the terminal.


CPAN
----

 - [Mustache](http://mustache.github.io/):
   Logic-less templates, with bindings in too many languages
   (Perl, Python, C++, Go, D, Haskell, Erlang, Common Lisp).

 - [Reply](https://metacpan.org/module/Reply):
   REPL for Perl.

 - [Smart::Comments](https://metacpan.org/module/Smart::Comments):
   Great library to produce output from Perl's comments and ensure
   they are actually synchronized with the code.

 - [File::Serialize](https://metacpan.org/module/File::Serialize):
   Transparently handle both YAML and JSON documents.

 - [Process::Status](https://metacpan.org/module/Process::Status):
   Nice interface to get the exit status of a sub-process.

 - [Bencher](https://metacpan.org/module/Bencher):
   Nice benchmarking library.

 - [Test2](https://metacpan.org/module/Test2):
   A rather extensive and thorough test framework.

 - [Data::Validate::Domain](https://metacpan.org/module/Data::Validate::Domain):
   Validators for various types of data.

 - [PDF::Reuse](https://metacpan.org/module/PDF::Reuse):
   Amazing PDF-handling library.

 - [Text::Choose](https://metacpan.org/module/Term::Choose):
   Amazing library for CLI applications, where it presents a menu for selecting
   an option, and then disappears.  Has many other properties, as well.

 - [Benchmark](https://metacpan.org/pod/Benchmark):
   Benchmark running times of Perl code.

 - [Devel::Timer](https://metacpan.org/pod/Devel::Timer):
   Track and report execution time for parts of code.


Web Development
---------------

 - [Mojolicious](http://mojolicious.org/):
   Web Framework.
 - [Catalyst](http://www.catalystframework.org/):
   Web Framework.
 - [Dancer](http://www.perldancer.org/):
   Web Framework.

