Quick Start
===========

Installation
------------

I installed [Rust][rustlang] from the official website, but we can also use `rustup`,
a Rust package manager.

```
   $ curl https://sh.rustup.rs -sSf | sh
   $ rustup update
   $ rustc --version
```


Project Setup
-------------

Use `cargo` to setup a project.  The project can be stored in a SCM repository, like git:

```
   $ mkdir project
   $ git init
   $ cargo init --bin .		# or --lib, if we are creating a library
   $ ed Cargo.toml		# metadata about the project
   $ ed src/main.rs		# or src/lib.rs, if we are creating a library
```


[rustlang]:	https://www.rust-lang.org/
