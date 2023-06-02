Rust
====

Resources
---------

A comprehensive summary and collection of all the available, online, Rust books
can be found at: [The Little Book of Rust Books](https://lborb.github.io/book/).

### Books

 - [The Rust Programming Language](https://doc.rust-lang.org/book/)
   Also published by "No Starch Press".  There is also a 2nd edition.
   An interactive version of this book, with some quizzes on selected chapters
   can be found at <https://rust-book.cs.brown.edu/>.
 - [Rust by Example](http://rustbyexample.com/)
 - [Programming Rust](http://shop.oreilly.com/product/0636920040385.do) (O'Reilly)
 - [Rust Design Patterns](https://github.com/rust-unofficial/patterns)
 - [Rust in Action](https://www.manning.com/books/rust-in-action) (Manning):
   "fccmcnamara" to save 37% of its price.
 - [Hands-On Concurrency in Rust](https://www.packtpub.com/application-development/hands-concurrency-rust) (Packt)

#### Mini-Books ####

 - [Command-line Applications in Rust](https://rust-cli.github.io/book/)
 - [Asynchronous Programming in Rust](https://rust-lang.github.io/async-book/)
 - [The Cargo Book](https://doc.rust-lang.org/cargo/)
 - [rustdoc Book](https://doc.rust-lang.org/rustdoc/)
 - [The Rustonomicon Book](https://doc.rust-lang.org/nomicon/):
   Details about internal designs & implementations of the language and library.
 - [The Rust Reference Book](https://doc.rust-lang.org/reference/)
 - [The Rust Performance Book](https://nnethercote.github.io/perf-book/)
 - [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
 - [Secure Rust Guidelines](https://anssi-fr.github.io/rust-guide/)
 - [Writing Interpreters in Rust](https://rust-hosted-langs.github.io/book/)
 - [Futures Explained in 200 lines of Rust](https://cfsamson.github.io/books-futures-explained/)
 - [The embedonomicon](https://rust-embedded.github.io/embedonomicon/)
 - [Writing Interpreters in Rust](https://rust-hosted-langs.github.io/book/):
   A companion book to the famous, excellent book from Bob Nystrom,
   [Crafting Interpreters](http://craftinginterpreters.com/), but the code is
   presented in Rust, of course.
 - [Rust for the Polyglot Programmer](https://www.chiark.greenend.org.uk/~ianmdlvl/rust-polyglot/)

### Online Resources

 - [The Rust Docs](https://doc.rust-lang.org/)
 - [The Rust Book](https://doc.rust-lang.org/book/)
 - [The Rust PlayGround](https://play.rust-lang.org/)
 - [Rust Style Guide](https://github.com/rust-lang/rfcs/tree/master/style-guide)
 - [Rust in Ten Slides](https://steveklabnik.github.io/rust-in-ten-slides/)
 - [Rust Cookbook](https://rust-lang-nursery.github.io/rust-cookbook/)
 - [Effective Rust](https://www.lurklurk.org/effective-rust/)
 - [The Little Book of Rust Macros](https://danielkeep.github.io/tlborm/book/)
 - [into_rust()](http://intorust.com/):  Screen-casts for learning Rust
 - [Rust Language Cheat Sheet](https://cheats.rs/)
 - [Rust Cheat Sheet](https://upsuper.github.io/rust-cheatsheet/)
 - [rs-samples](https://github.com/snowzurfer/rs-samples):
   A collection of small, documented examples in Rust to learn the language.
 - [Rust by Practice](https://practice.rs/):
   This online book is accompanied by a
   [Github repository](https://github.com/sunface/rust-by-practice),
   but it doesn't seem to contain too much staff.
 - [Rust FFI Examples](https://github.com/alexcrichton/rust-ffi-examples):
   A collection of Rust FFI to/from any other language.
 - [RustVids](https://rustvids.github.io/):  Videos of Rust issues
 - [Rust Embedded Development](http://embed.rs/)
 - [Rust Learning Resources](https://github.com/ctjhoa/rust-learning)
 - [Demystifying Asynchronous Rust](https://teh-cmc.github.io/rust-async/html/)
 - [Writing an OS in Rust](http://os.phil-opp.com)
 - [Redox](http://www.redox-os.org/):
   Unix-like Operating System written in Rust, aiming to bring the innovations
   of Rust to a modern micro-kernel and full set of applications.
 - [Rust Embedded](https://github.com/rust-embedded):
   Resources, tutorials, books, and code for embedded programming using Rust.
 - IRC Channels:
   - `#rust-beginners`

### Tutorials ###

 - [Rust Tutorials](http://www.rust-tutorials.com/)
 - [A Gentle Introduction To Rust](https://stevedonovan.github.io/rust-gentle-intro/readme.html)
 - [Rust-101](https://www.ralfj.de/projects/rust-101/):
   An online tutorial (can be downloaded and viewed offline as well) by Ralf Jung
   (professor at ETH Zürich).
 - [A Guide to Porting C/C++ to Rust](https://locka99.gitbooks.io/a-guide-to-porting-c-to-rust/)
 - [GTK Rust Tutorial](https://mmstick.github.io/gtkrs-tutorials/)

### Courses ###

 - [Comprehensive Rust](https://google.github.io/comprehensive-rust/):
   An online, free course from Google for Android developers.  It spans in a few
   days, so it's rather short and easy to follow.


Tools
-----

Rust, like Go, is rich of tools and probably it's built using the tool-set in
mind.

 - rustc:  compiler
 - cargo:  package manager, installed with the main distribution
 - [explaine.rs](https://jrvidal.github.io/explaine.rs/):
   Online documentation to explain elements of the language, as they appear in a
   script.
 - [Crates.io][crates]: central repository for Rust packages
 - [Crates.rs](https://crates.rs/):  an alternative to [Crates.io][crates]
 - [Docs.rs][docs]:  documentation coming from any *crate*
 - [clippy](https://github.com/Manishearth/rust-clippy):  Linter
 - [rustfmt](https://github.com/rust-lang-nursery/rustfmt):  Code formatter.
 - [rustfix](https://github.com/rust-lang-nursery/rustfix):
   Automatic resolve issues between Edition 2018 and older ones.
 - [racer](https://github.com/phildawes/racer):  Auto-completion utility.
 - [rust-analyzer](https://rust-analyzer.github.io/):
   The new implementation of the
   [Language Server Protocol (LSP)](https://microsoft.github.io/language-server-protocol/)
   for Rust.  It provides features like completion and goto definition for many code editors.
 - [Rust Language Server (RLS)](https://github.com/rust-lang-nursery/rls):
   Language server (for symbol search, etc.)
   This tool is deprecated in favour of the [rust-analyzer](https://rust-analyzer.github.io/)
   and probably not supported after Rust 1.64 release.
 - [kcov](https://github.com/SimonKagstrom/kcov):
   A general-purpose coverage tool.  It can be used against any DWARF-based
   executable, thus we can use it with Rust programs, too.
 - [async-std](https://async.rs/):
   A new runtime, based on the latest features of `async/await` of the language.
   The runtime, reimplements all blocking components of the _Standard Library_,
   and uses the auto-scaling ideas from Go's runtime.


Other
-----

 - [rtForth](https://github.com/chengchangwu/rtforth):  simple Forth implemented in Rust
   for real-time application.

 - [Aero](https://github.com/Andy-Python-Programmer/aero):
   An experimental, UNIX-like OS written in Rust.  It follows the monolithic
   kernel design and it is inspired by the [Linux Kernel](https://kernel.org/).
   It supports _modern_ PC features.

 - [NekoOS](https://github.com/NekoOS-Group/NekoOS):
   A Rust-based RISC-V OS.


[crates]:		https://crates.io/
[docs]:			https://docs.rs/
