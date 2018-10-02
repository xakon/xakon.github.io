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
