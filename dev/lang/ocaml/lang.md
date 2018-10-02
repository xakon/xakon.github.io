Language and Syntax
===================

Types
-----

 - _Booleans_:
   written as `bool`, have only 2 values, `false` and `true`.
   Operators supported are `&&`, `||`, and `not`.
   Be careful:  `and` is not a boolean conjunction!
   The latter is specified only by `&&`.
 - _Integers_:
   written as `int`, 64-bit signed integers (platform-depended).
   Support all arithmetic operators, like `+`, `-`, `*`, `/`, and `mod`.
   Integer division and integer remainder.
 - _Floating-points_:
   written as `float`, values must have either a decimal point or/and
   exponential.  Usual arithmetic operators supported.
   Also, many different functions operate on `floats`.
 - _Characters_:
   written as `char`, 8-bit values can be written as in ANSI C.
   Some useful conversion functions are:
   * `Char.chr`,
   * `Char.code`
 - _Strings_:
   written as `string`, they contain 8-bit values (`char`).
   Denoted as in ANSI C.  They are 0-based indexed.  Immutable.
   Common functions are:
   * `String.length`
   * `String.get`
   * `int_of_string`
   * `float_of_string`

All types are different between them.  No implicit conversions take place
between the types.  Conversions between types can be done with functions,
like for example, `float_of_int` to convert an `int` to a `float`, or
`int_of_float` to convert a `float` to an `int`.


Operators
---------

 - _Arithmetic_:
   All the usual ones: `+`, `-`, `*`, `/`, and `mod`.
   For _Floating-point_ arithmetic the operators are:
   `+.`, `-.`, `*.`, and `/.`.
 - _Comparisons_:
   `<`, `<=`, `<>`, `=`, `>`, `>=`.
 - _Boolean_:
   `&&`, `||`, `not`.
 - _Strings_:
   `^` (concatenation).


Expressions
-----------

### Conditional Expressions ###

The syntax is the well-known `if E1 then E2 else E3`, and it returns a value,
whose type should be the same in both the `then` and `else` branches.
`else` might be omitted, but the return value is `:`.

### Function Application ###

A function with _n_ parameters is called like this:

    f e1 e2 ... en

Like in Haskell, parentheses are not needed to indicate a _function
application_, unless the expression is more complicated and needs disambiguation
following the precedence rules.

The type of the _function application_ is, of course, the return type of the
function.  The notation for the type of a function follows Haskell notation:

    T1 -> T2 -> ... -> Tn -> Tresult

### Operators ###

These are expressions like _Function Applications_, only that they are using
_infix notation_ (like in Haskell).  They can be used to further create more
complex expressions.


Definitions
-----------

_Definitions_ give names to values.  They map to _variables_ of the imperative
languages.  They are immutable, and their scope exists from the point of their
declaration (unlike Rust).

They come in 2 forms:  _global_ and _local definitions_.
The syntax is the famous `let` operator:  `let name = expression`.
The _local definitions_ define also their scope, and they extend the `let`
operator with the scope:  `let name = expression in expression`.

The _expression_ assigned to a _definition_ is evaluated before the
binding comes into scope.  We can define _simultaneous definitions_, where all
the _expressions_ are evaluated before they are assigned to the _definitions_.

    let x = E1 and y = E2;;


Functions
---------

_Functions_ are defined using the `let` syntax, and they are just values that
execute an _expression_.

One problem found in recursive functions is the fact that the symbols used in
the defining _expression_ should include all necessary symbols.  As this doesn't
apply for the newly defined function, a simple `let` expression won't work.
For this reason, we need the `rec` keyword, as in:

    let rec fact n = if n=1 then 1 else n * fact (n-1);;

Similarly, for mutual recursive functions, we need to define them using a
_simultaneous definition_ and the use of the keyword `and`.
