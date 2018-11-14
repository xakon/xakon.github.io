OCaml
=====

[OCaml][ocaml] is another descendant from the ML
family of programming languages.  It added a couple of extra features to the
[Standard ML](https://en.wikipedia.org/wiki/Standard_ML).

Originally called _Objective ML_, now this name is obsolete.
OCaml was designed and its first compiler implemented by
[Xavier Leroy](http://pauillac.inria.fr/~xleroy/).

Its compiler is really fast, that's why even [Rust](https://www.rust-lang.org/)
was initially built using OCaml, until it can bootstrap itself.

[ocaml]:	http://ocaml.org/

Resources
---------

 - [Official Page](https://ocaml.org/)
 - [Try OCaml](https://try.ocamlpro.com/)
 - [Introduction to OCaml](https://blog.baturin.org/introduction-to-ocaml.html)
 - [Wikipedia](https://en.wikipedia.org/wiki/OCaml)

 - [OCaml for the Skeptical](https://www2.lib.uchicago.edu/keith/ocaml-class/)


### Books ###

There are many available books for [OCaml][ocaml], both free and commercial.
At the [community site](http://ocaml.org/learn/books.html) I can find a complete
list.  As a reference, here are a few interesting ones:

 - [The OCaml System](http://caml.inria.fr/pub/docs/manual-ocaml/),
   by Xavier Leroy.  The official manual of the language.  Available in many
   formats.
 - [Developing Applications with OCaml](http://caml.inria.fr/pub/docs/oreilly-book/):
   A freely available book by O'Reilly.  A bit outdated (it's 2000 edition), but
   a great tutorial of the language.  Many formats available.
 - [Using, Understanding, and Unraveling the OCaml Language](http://caml.inria.fr/pub/docs/u3-ocaml/),
   by Didier Rémy:  Paper with the technical details about the language.


Tools
-----

[OCaml][ocaml] is a language full of useful tools in its ecosystem.
Here we have:

 - `ocaml`: handy REPL interface.
 - `ocamlc`: bytecoce compiler for writing portable executables.
 - `ocamlopt`: compiler for native executables (many platforms supported).
 - `js_of_ocaml`: compiler to JavaScript for Web Applications.
 - [opam](http://opam.ocaml.org) is a package manager for OCaml.
 - Hundreds of packaged libraries at <http://opam.ocaml.org/packages/>.
 - [Try OCaml](https://try.ocamlpro.com/):
   An interactive, Web-based OCaml interpreter.

Examples
--------

Many projects built with or they use [OCaml][ocaml] are at the industry.
Among them, one can find:

 - [Rust](http://rust-lang.org) was initially bootstrapped using OCaml.
 - [Coq](https://coq.inria.fr/) proof assistant.
 - [Ocsigen](http://ocsigen.org/), a revolutionary Web framework.
 - [MirageOS](https://mirage.io/), a micro-kernel used as an imported library.
