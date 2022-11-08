Crates
======

Even though Rust is a quite new language, there is already a vast and rich
amount of libraries, _crates_ in Rust's terms, from which a developer can choose
from.  Since this list is huge, I need to document a few of them, to have them
handy next time I need a _crate_ for a specific task.

As always, more information about these _crates_ and even more powerful search
tools can be found at the main [Crates.io](https://crates.io/) site.
Also, another similar, but better, compilation can be found in
[Blessed - (Unofficial Guide to the Rust Ecosystem)](https://blessed.rs/crates).


### General

 - [nix](https://github.com/nix-rust/nix):
   Neat, Rust interface for UNIX system calls.
 - [chrono](https://crates.io/crates/chrono):
   Datetime handling, like Python's standard library, but in C++ style.
 - [slog](https://github.com/slog-rs/slog):
   A very complete logging suite for Rust.  It is a core followed by many
   plugins, such as [term](https://docs.rs/slog-term/) for terminal output,
   [json](https://docs.rs/slog-json/) for JSON output and more.
 - [log](https://docs.rs/log):
   A simpler alternative to [slog](https://github.com/slog-rs/slog), that might
   become part of Rust's Standard Library.  This _create_ provides only the
   interface, leaving the actual implementation to another _crate_.
 - [env_logger](https://crates.io/crates/env_logger):
   The most popular _crate_ for actual implementation of logging.  With a simple
   init function call and an environment variable we set logging to STDERR or
   STDOUT.  There are other, supplementary _crates_ that provide even more
   functionality.
 - [log4rs](https://crates.io/crates/log4rs):
   A highly configurable multi-output logging implementation of logging.
   Its design resembles Java's library [log4j](https://logging.apache.org/log4j/).
   Of course, it's much more difficult to configure and use it properly,
   comparing to `env_loggger`.


### Testing

 - [similar_asserts](https://docs.rs/similar-asserts/):
   An enhancement of the standard `assert_eq!()` macros, where better diff
   support has been added to easily spot the differences between the expected
   and the actual results.
 - [faux](https://github.com/nrxus/faux):
   Mocking library, without needing to create _traits_ to mock the targets.
   It depends on macros, instead of manually creating interfaces/test doubles.
 - [httpmock](https://github.com/alexliesenfeld/httpmock):
   HTTP mocking library for Rust.
 - [Tarpaulin](https://github.com/xd009642/tarpaulin):
   Code coverage tool with integration with `cargo`.
 - [quickcheck](https://crates.io/crates/quickcheck):
   A Rust implementation of QuickCheck.
 - [proptest](https://lib.rs/crates/proptest):
   Another property-based testing library for Rust, in the same spirit as
   Haskell's QuickCheck.
 - [cargo-fuzz](https://github.com/rust-fuzz/cargo-fuzz):
   Fuzz test library.
 - [afl](https://github.com/rust-fuzz/afl.rs):
   Fuzzing Rust code with American Fuzzy Lop (AFL).
 - [Criterion.rs](https://crates.io/crates/criterion):
   Statistics-driven micro-benchmarking library.  Source code can be found at
   [Github](https://github.com/japaric/criterion.rs).
 - [alloc_counter](https://crates.io/crates/alloc_counter):
   Count number of heap allocations.  Useful for tracing and measuring
   performance-related code.
 - [claim](https://crates.io/crates/claim):
   Another assertion library that expands standard assertion macros with some
   specialized ones.


### Terminal

 - [clap](https://docs.rs/clap/2.14.0/clap/):
   A simple to use, efficient, and full featured Command Line Argument Parser.
 - [pico-args](https://crates.io/crates/pico-args/):
   An alternative to `clap`, with focus on no-dependencies, small memory and
   compilation overhead.
 - [structopt](https://docs.rs/structopt-derive/0.1.5/structopt_derive/):
   A wrapper around `clap`, that uses macros to describe the command-line
   interface.
 - [termion](https://github.com/ticki/termion):
   Low-level terminal stuff.
 - [linefeed](https://github.com/murarth/linefeed):
   Interactive input reader.
 - [prettytable](https://github.com/phsym/prettytable-rs):
   Output tables.
 - [exitcode](https://github.com/benwilber/exitcode):
   Standard UNIX exit codes.
 - [chan-signal](https://github.com/BurntSushi/chan-signal):
   Handling OS signals.
 - [colored](https://crates.io/crates/colored):
   Nice interface, with extra methods on strings to color them with ANSI colors
   while printing them on terminal.


### Files

 - [tempfile](https://github.com/Stebalien/tempfile).
 - [glob](https://github.com/rust-lang-nursery/glob).
 - [walkdir](https://github.com/BurntSushi/walkdir):
 - [csv](https://github.com/BurntSushi/rust-csv).


### Concurrency

 - [Tokio](https://tokio.rs/):
   The asynchronous run-time for the Rust.
 - [crossbeam](https://github.com/crossbeam-rs/crossbeam):
   Support for parallelism and low-level concurrency.
 - [Rayon](https://github.com/rayon-rs/rayon):
   A data parallelism library.


### Web Development

 - [Rocket](https://rocket.rs/):
   A Web Framework for Rust.
 - [Serde](https://crates.io/crates/serde):
   Serialization library.
 - [Maud](https://github.com/lfairy/maud):
   An incredible fast, Template Engine.
 - [reqwest](https://github.com/seanmonstar/reqwest):
   An HTTP client.
 - [Hyper](https://hyper.rs/):
   An HTTP library for Rust.
 - [Actix](https://github.com/actix/actix-web):
   A higher-level HTTP library, suitable for quite micro-services.


### Parsers

 - [lalprpop](https://github.com/nikomatsakis/lalrpop):
   LR(1) parser generator for Rust.
 - [regex](https://docs.rs/regex/):
   A fast, regular-expression parser.

#### XML Processing ####

##### Stream Parsers #####

 - [xml-rs](https://crates.io/crates/xml-rs):
   The most powerful XML stream parsing library, but very slow, and it needs a
   lot of boilerplate code to support it.
 - [quick-xml](https://crates.io/crates/quick-xml):
   A much faster and lightweight alternative.
   It also supports the [Serde](https://crates.io/crates/serde) deserialization.

##### DOM Parsers #####

 - [xmltree](https://crates.io/crates/xmltree)
 - [minidom](https://crates.io/crates/minidom)
 - [serde-xml-rs](https://crates.io/crates/serde-xml-rs):
   Implementation of [Serde](https://crates.io/crates/serde) deserialization
   interface, and it works smoothly with [xml-rs](https://crates.io/crates/xml-rs), too.


### Games ###

 - [Tetra](https://tetra.seventeencups.net/):
   A simple 2D game framework.
