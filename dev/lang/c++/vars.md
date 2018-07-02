Variables
=========

## Initialization

A variable can be initialized using one of the following forms:

```c++
X a1 {v};	// new in C++11, can be used in every context, recommended by Stroustrup
X a2 = {v};	// used in C programs
X a3 = v;	// used in C programs
X a4(v);	// deprecated and ubiquitous
```

The `a1` initialization is called `list initialization` and does not allow narrowing.
This means that:
 - an integer cannot be converted into another integer that cannot hold its value.
 - a floating-point cannot be converted into another floating-point that cannot hold its value.
 - a floating-point cannot be converted into an integer.
 - an integer cannot be converted into a floating-point.

A trap with {}-list is while using `auto`:

```c++
auto z1 {98};		// z1 is an initializer_list<int>
auto z2 = 98;		// z2 is an int
```

So, prefer `=` when using `auto`.

The empty `{}` initializes a variable to its default value and the absence
of any initializer leaves its value undefined for local variables, but for
global or static objects is equivalent to the empty `{}`-initializer.


[//]:	# vim: ft=markdown spell
