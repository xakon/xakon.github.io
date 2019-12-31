Rust Traits
===========

Here comes a small list of some basic and common _traits_ found in the
_Standard Library_.  The idea of this document was inspired by the article,
[Common Rust Traits][article].  I also have collected a few notes in the past
from some books, now I need to gather them into a single document.

Rust _trais_ act like _interfaces_ in other languages, but also as _concepts_
on generic code.


[article]:	https://stevedonovan.github.io/rustifications/2018/09/08/common-rust-traits.html

### Converting to strings: `ToString` ###

Easily convert values into `Strings`.

Defines:

 - `ToString::to_string()`

### Printing: `Display` and `Debug` ###

Print out values.  `Debug` can be _derived_ by the compiler, if all contained
values do implement `Debug`.  They are used in `println!` mini-language.

`Define` _automatically_ implements `ToString`.

Define:

 - `Display::fmt()`
 - `Debug::fmt()`?

### `Default` ###

Nice "alternative" to the missed _named function parameters_:

    func(Config {
       job_name: "test",
       output_dir: Path::new("/var/tmp"),
       ...Default::default(),
    });

Define:

 - `Default::default()`


### Conversions: `From` and `Into` ###

A pair of _traits_.  If we implement one, we get the other for free.

Define:

 - `From::from()`
 - `Into::into()`


### Making Copies: `Clone` and `Copy` ###

Define:

 - `Clone::clone()`
 - `Copy::copy()`
