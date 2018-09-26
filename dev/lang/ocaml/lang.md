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
