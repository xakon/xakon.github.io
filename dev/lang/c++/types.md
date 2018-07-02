Types
=====

[comment]: <> (TODO: write about char literals and types, whole §6.2.3)

The *standard integer types* come in three forms:  "plain", `signed`, and
`unsigned`.  And 4 sizes:  `short int`, "plain" `int`, `long int`, and
`long long int`.  There are also synonyms on these types:
`unisgned` is `unsigned int`, `short` is `short int`, `long int` is `long` and
`long long int` is `long long`.

More specific integer types are contained in `stdint.h` (defined by C99 standard).

In addition to the *standard integer types*, an implementation may provide
*extended integer types*.

Integer literals come in decimal, octal and hexadecimal forms.
A compiler ought to warn about literals tat are too long to represent,
but an error is only guaranteed for `{}` initializers.

The suffix `U` can be used to write explicitly `unsigned` literals.
The suffix `L` can be used to write explicitly `long` literals.

[comment]: <> (TODO: note down integer literal types from §6.2.4.2)

Floating-point types are:  `float`, `double`, and `long double` as for
single-, double- and extended-precision numbers.

The floating-point literals are by default `double`s, where a `f` or `F`
suffix denotes a `float`, and a `l` or `L` suffix denotes a `long double`.

[comment]: <> (TODO: write down the table from §6.2.6)

In addition to the standard defined literals, a user can define new *suffixes*
for user-defined types.  For example:

```c++
"foo bar"s		// a literal of type std::string
123_km			// a literal of type Distance
```

But, suffixes not starting with `_` are reserved for the standard library.

[comment]: <> (TODO: document and learn more about the usage of `alignas()`)

[//]:	# vim: ft=markdown spell
