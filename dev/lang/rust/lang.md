Syntax
======

It reminds a lot of C or C++.  Comments are C++ like.
Expressions terminate with `;`.

The *Standard Prelude* is included by default.
I/O functions are stored in the *I/O Prelude*.

Rust has a strong, static type system.  However, it also has type inference.

All variables are *immutable* by default.  Use `mut` to define *mutable*
bindings.

A `let` expression *binds* a variable to the local scope.
It allows us to re-declare a variable, called *shadowning*.
Of course, the first value will be inaccessible after *shadowing*.
A useful technique for comparing and normalizing types.

Most functions return a `Result`, that must be handled, otherwise we get a
warning from the compiler (through an *annotation*).  I/O functions return
`io::Result` types.

`String` is the usual type, that holds UTF-8 strings.

`::new()` is the standard static-method to create new objects.

There are both *functions*, *methods*, and *macros*.
A *macro* is called by appending an `!` at its name.

*Methods* operate in *traits* and their *trait* should be in scope.

*Traits* seems to be similar to Go interfaces.
I also found an analogy to C++ namespaces, but I'm not sure why.

*Modules* help organize our code in hierarchies.
A *module* can contain *macros*, *functions*, *variables*, *traits*,
even other, embedded *modules*!

*Crates* are packages of Rust code.  They can be handled with `Cargo`.

*Attributes* control some aspects of the language during compilation/linking.
They can be applied either to the *crate* or to items, like functions.


### Syntax

#### Comments

2 types of comments:

 - *line comments*:  similar to `//` in C++.

 - *block comments*: similar to `/* */` in C, but can be nested.

 - *doc comments*:  the are defined with 3 slashes `///` and can use Markdown
   syntax.  Also, we can use `//!` to document other elements, not the one
   following the *doc comment*.  Useful for *crates*.

The `rustdoc` tools is useful to create HTML documentation out of the
*doc comments*, and also to run the code examples as tests.

#### Keywords

There is a full list of keywords with explanation of their functionality in
Appendix A of "The Rust Programming Language".

 - `fn` is the keyword to define a new function
 - `let` creates a new binding
 - `mut` makes a mutable binding
 - `use` bind external symbols in local names
 - `as` type-casting or renaming of external symbols (in `use`)
 - `extern` import external crate in code (equivalent to `use`)
 - `loop` create an infinite loop
 - `while` a regular while loop
 - `for` a foreach loop over a sequence or iterator
 - `break` exit block
 - `continue` continue loop
 - `return` early exit from function
 - `match` create a *match* statement
 - `type` create a type alias, usually for shorter type names
 - `enum` create an enumeration
 - `struct` create a C-like structure
 - `impl`
 - `Self` refer to implementation type in methods
 - `mod` introduce a new module in scope
 - `pub` make module member public

#### Variables

*Variable Bindings* can take place using the `let` keyword.
All the variables **must** be initialized (an uninitialized variable produces
a warning only when it is not used in the block, otherwise it is an error).
By default, they are immutable;  we can place the `mut` keyword before the name
of the variable.  `let` can accept a *pattern* at its left side, so that we can
bind multiple variables at once.

Rust has a type-inference and can guess all the types of the variables we
declare.  We can make them explicit or change the default inferred type by using
*type annotations*:  a colon with a type following the name of the binding.

The scope in Rust is textual and any variable is accessible to the block it is
declared.  The variables can be shadowed, though.

#### Functions

The keyword `fn` declares a new function.
Function parameters are declared as in `let` bindings, but the types *must* be
declared.  A function can return **only** one parameter, declared its type with
`->` after the parameters.  The return value is the last *expression* in the
function's body.  We can use the `return` keyword for early exits from the
function's body, and also at the last expression, but this is considered as
*poor style* (I have no idea why!).

There is a strange syntax for functions that return nothing.  It is weird, as
Rust is an *expression-based* language:

```rust
   fn diverges() -> ! {
      panic!("This function will never return!");
   }
```

We can also create bindings to function pointers.

There are also *closures* or *lambda functions*, which can capture their scope.
Main differences between *closures* and *functions*:

 - Use `||` instead of `()` to define a *closure*.
 - Type annotations on variables and parameters are optional.
 - If the body is a single expression, block brackets (`{}`) are optional.

Example of a simple but common *closure*:  `|x| sum + x`.

#### Types

The common primitive data types found in other languages can be found in Rust,
as well.

##### Booleans

 - `bool`: `true` and `false`

##### Char

The `char` type represents a single Unicode scalar value.  They can be created
with a single tick (`'`).  It is a 32-bit value.

##### Integers

 - `i8`, `u8`
 - `i16`, `u16`
 - `i32` (default), `u32`
 - `i64`, `u64`
 - `isize`, `usize`

##### Floating Points

 - `f32`, `f64`:  These correspond to IEEE-754 single and double precision
   numbers

##### Arrays

The *arrays* are fixed-size list of elements.  By default immutable.
The `len()` returns the number of the array (compile-time constant).
The type of an array is `[T; N]`.  With the syntax `[0; 20]` we can initialize
at once multiple elements at the same value.  Accessing elements using subscript
notation (0-element arrays).  Array access is bounds-checked at run-time.

##### Slices

A *reference* or *view into* another data structure.
A combination of `&` and `[]` is used to declare slices.
The type of slices is `&[T]`.

##### `str`

##### Tuples

An heterogeneous, ordered list of fixed size.
Elements can be extracted using *desctructive let* or through 0-indexing element
indexing.  Unlike from arrays, we use the dot notation for these indices.

#### Attributes

An *attribute* applied to a *crate* has the syntax `#![crate_attribute]`,
whereas an *attribute* applied to an item has the syntax `#[item_attribute]`
(no `!` in it).

Attributes can take arguments with different syntaxes:

 - `#[attribute = "value"]`
 - `#[attribute(key = "value")]`
 - `#[attribute(value)]`

#### Traits

Some default *traits* can be inherited using the `#[derive]` attribute.

#### Modules

We define a *module* with the `mod` keyword.
By default all members of a *module* are private.
We can make them public with the `pub` keyword.

*Module public members* can be referenced with a double colon `::` syntax.
Using the `use` declaration we can import any symbol from a *module* in current scope.
Combined with the keyword `as` we can bind the external symbol in any local name.

*Structure fields* belonging in a *module* are also private by default,
but this visibility can be changed on a field-level using the `pub` keyword again.

*Modules* can also be organized in files.
They can be found either in `MODULE.rs` or in `MODULE/mod.rs`.

Nice reference and tutorial was found at [Infinite Negative Utility][rust-modules].

[rust-modules]:	https://blog.infinitenegativeutility.com/2017/8/the-basic-principles-of-rust-modules


### Prelude

All the following symbols belong to the *Standard Prelude*.
I want include the `std::` prefix to their name, where they belong.
For example, I will write `string::String`, but in reality this is defined as
`std::string::String`.

`string::String`
   *class*, representation of a UTF-8 string

`Ordering`
   *enum*, used to compare values, with 3 *variants*:
   `Less`, `Equal`, `Greater`
