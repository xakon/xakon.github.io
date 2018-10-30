Crates
======

Even though Rust is a quite new language, there is already a vast and rich
amount of libraries, _crates_ in Rust's terms, from which a developer can choose
from.  Since this list is huge, I need to document a few of them, to have them
handy next time I need a _crate_ for a specific task.

As always, more information about these _crates_ and even more powerful search
tools can be found at the main [Crates.io](https://crates.io/) site.


### General

 - [nix](https://github.com/nix-rust/nix):
   Neat, Rust interface for UNIX system calls.
 - [chrono](https://crates.io/crates/chrono):
   Datetime handling, like Python's standard library, but in C++ style.

### Testing

 - [quickcheck](https://crates.io/crates/quickcheck):
   A Rust implementation of QuickCheck.

 - [cargo-fuzz](https://github.com/rust-fuzz/cargo-fuzz):
   Fuzz test library.

 - [Criterion.rs](https://crates.io/crates/criterion):
   Statistics-driven micro-benchmarking library.  Source code can be found at
   [Github](https://github.com/japaric/criterion.rs).


### Terminal

 - [clap](https://docs.rs/clap/2.14.0/clap/):
   A simple to use, efficient, and full featured Command Line Argument Parser.

 - [structopt](https://docs.rs/structopt-derive/0.1.5/structopt_derive/):
   A wrapper around `clap`, that uses macros to describe the command-line
   interface.

 - [termion](https://github.com/ticki/termion):
   Low-level terminal stuff.

 - [linefeed](https://github.com/murarth/linefeed):
   Interactive input reader.

 - [prettytable](https://github.com/phsym/prettytable-rs):
   Ouptut tables.

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

 - [csv](https://github.com/BurntSushi/rust-csv).


### Concurrency

 - [Tokio](https://tokio.rs/):
   The asynchronous run-time for the Rust.


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


### Parsers

 - [lalprpop](https://github.com/nikomatsakis/lalrpop):
   LR(1) parser generator for Rust.
