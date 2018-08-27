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
They are fat-pointers, which mean that they have a known, run-time size.
Their lifetime is the same as their owner.
The type of slices is `&[T]`.

##### Strings

Strings is a very interesting topic in Rust.  The designers of the language
didn't hide the fact that a string data-type is something difficult.  They
ended up in a design, that it seems rather natural now, but rather strange for
a C/C++, Python, Ruby, JavaScript developer!

There are the *string literals*, UTF-8 strings embedded in the binary,
obviously immutable and with a *static* lifetime.  Their type is `str` and
their size is known at compile time.

Usually, we handle these literals through a *string slice*, written with
`&str`.  The *string slice*, as any *slice*, is a fat-pointer, with a runtime
size, and lifetime bound to its owner.

Finally, there are also the *string buffers* (this is my term), implemented by
the `string::String` class.  This class is a thin-wrapper around a `vec::Vec`
class, and it enhances the wrapped class by ensuring that the contained values
are valid UTF-8 strings.  It can grow dynamically during run-time, it is movable,
and more importantly, it can be dereferenced into a *string slice*.

##### Tuples

An heterogeneous, ordered list of fixed size.
Normally, they hold related data together.
Elements can be extracted using *desctructive let* or through 0-indexing element
indexing.  Unlike from arrays, we use the dot notation for these indices.

#### Structs

A *struct* is an heterogeneous aggregation of values into a single one.
Its elements can be accessed using the *dot notation*, like: `person.name`.

*structs* hold the data, but they can also have an implementation, attached
*methods* to their datatype.

We define a *struct* like this:

    struct User {
    	name: String,
    	email: String,
    	sign_in_count: u64,
    	active: bool,
    }

A new *struct instance* is created by mentioning **all** the fields,
in a series of `key: value` pairs:

    let user1 = User {
    	email: "user1@example.com".to_string(),
    	name: "User 1".to_string(),
    	active: true,
    	sign_in_count: 1,
    };

As it is tedious to create a *struct instance* by naming all the fields,
there is a shorthand syntax in Rust to remove some duplication.
This syntax is called *field init shorthand* and it leads to more compact
and less verbose code:

    fn build(email: String, name: String) -> User {
    	User {
    	    email,
    	    name,
    	    active: true,
    	    sign_in_count: 1,
	}
    }

Furthermore, an extension of this syntax is the *struct update syntax*,
useful when we want to create a new *instance* out of another one,
but change only a few fields:

    let user2 = User {
    	email: "another@example.com".to_string(),
    	name: "User 2".to_string(),
    	..user1
    };

#### Tuple Structs

A combination of a *tuple* and a *struct*, useful when we would like to create
a distinct type out of a *tuple*.  It reminds the Python's `namedtuple`.

For example:

    struct Color(i32, i32, i32);
    struct Point(i32, i32, i32);

    let black = Color(0, 0, 0);
    let origin = Point(0, 0, 0);

Here, both `black` and `origin` are stored as *tuples*, they contain the same
values, but they are different types.  Thus, we can pass `black` to a function
that expects a `Point`, and we cannot mix the 2 variables in incompatible
expressions.

#### Unit-like Structs

These are the same as a *unit tuple*, written as `()`.
They are supposed to be useful, but I don't still know where.

#### Methods

We can attach functions in the implementation of a *struct* (or any other
datatype) and use the *method syntax* to call these functions.  By the way,
Rust is rather clever, and it automatically dereferences a *reference*
while using the *method syntax*, leading to ergonomically and well-written
code.  This feature is called *automatic referencing and referencing*, and
is implemented using some *traits*.  Thus, Rust doesn't need the famous `->`
operator of C++!

The *methods* are defined inside an `impl` block.
Their first parameter should be the *instance* they operate on, and we are
using the keyword `self` for this reason.  Normally, we pass the *instance*
as a *reference* or as a *mutable reference*, as a method rarely needs to
take ownership of the *instance*.

There are also the *associated functions*, called *static methods* in other OOP
languages.  These *functions* don't accept a `self` argument, and they are used
with the `::` syntax and the *struct* name.  This syntax is the same for both
*associated functions* and *namespaces*, created by *modules*.

Usually, factory methods are implemented as *associated functions*:

    let s = String::new();

#### Enums

The `enum` types define *enumerations*, which are closer semantically to
*Algebraic Types* of Haskell, rather than to C's `enum`.  Actually, I would
compare it with a proper C's `union`, a combination of `struct`, `enum`, `union`
in the C world.

An `enum` defines a series of *variants*, each one can have optional data
associated with it.  We can access each *variant* using the `::` syntax,
as each `enum` defines its own namespace:  `IpAddress::V4`.

Of course, as `enums` are new data-types, we can associate *methods* with them,
exactly as with `structs`.

The best example of an `enum` is the `std::Option`:

    enum<T> Option {
      Some(T),
      None,
    }

Actually, `Option` is so fundamental in the design of Rust, that both the
`Option` type and its *variants* are imported by default in the Prelude.
Thus, they are always accessible without the need for the `::` syntax.

#### `match`

Discussing about `enums` leads naturally to discussing to `match` expressions.
They are similar to C's `switch`, but on steroids.

A `match` expression evaluates a given *expression* and it tries to *pattern
match* it with a given set of *variants* (called *match arms*).  These *arms*
must be exhaustive: no possible value produced by the checked *expression* could
ever be excluded from the given *variants*.

Each *arm* is followed with a set of expressions, wrapped of course inside
blocks.  If the *variant expression* is simple, the brackets can be omitted.
These *arms* create local bindings in the *pattern matches*.

The `match` expression checks each given *arm* top-down in sequence.  It stops
when the very first one *pattern matches* the given *expression*.

If we are only interested in a single *variant*, a `match` expression can become
too verbose.  In these cases we can use the `if let` or `while let` expressions,
which allow us to use any *refutable pattern*, like in *match arms*.
See *Patterns* for more details.

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

A *module* is a *namespace* that contains definitions of *items*
(*functions*, *types*, *constants*, *traits*, etc.)
We define a *module* with the `mod` keyword.
The code for the *module* can appear either immediately the `mod` keyword or
placed in a directory (`mod.rs`) or in a file.
By default all members of a *module* are private.
We can make them public with the `pub` keyword.

*Module public members* can be referenced with a double colon `::` (namespace) syntax.
Using the `use` declaration we can import any symbol from a *module* or other
*namespace* in current scope.  Combined with the keyword `as` we can bind the
external symbol in any local name.  The *glob operator* (`*`) let us import into
scope **all** symbols from another *namespace* (highly discouraged).

In general, these are Rust's *Privacy Rules*:

 - If an item is public, it can be accessed through any of its parent modules.
 - If an item is private, it can be accessed only by its immediate parent
   module and any of the parent's child modules.

*Structure fields* belonging in a *module* are also private by default,
but this visibility can be changed on a field-level using the `pub` keyword again.

With the `super` keyword we are able to reach current's scope *parent namespace*.

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
