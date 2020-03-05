Syntax
======

### Keywords

```
   break	default		func		interface	select
   case		defer		go		map		struct
   chan		else		goto		package		switch
   const	fallthrough	if		range		type
   continue	for		import		return		var
```

In addition, there are some *predeclared names*:

Constants:	`true`	`false`	`iota`	`nil`

Types:		`int` `int8` `int16`  `int32` `int64`
		`uint` `uint8` `uint16` `uint32` `uint64` `uintptr`
		`float32` `float64` `complex128` `complex64`
		`bool` `byte` `rune` `string` `error`

Functions:	`make` `len` `cap` `new` `append` `copy` `close` `delete`
		`complex` `real` `imag`
		`panic` `recover`

### Declarations

A *delcaration* is one of: `var`, `const`, `type`, `func`.

A *variable* can be declared using the form:

```
   var name type = expression
```

where either `type` or `expression` can be left out, but not both of them.
Multiple variables of the same type can be declared by specifying the `type`
or of different type without it:

```go
   var i, j, k int			// int, int, int
   var b, f, s = true, 2.3, "four"	// bool, float64, string
```

Within a function we can also use the *short variable declaration*,
which is the most common way of defining variables.  Again, multiple
variables can be declared using this form.  A multi-variable declaration
should not be confused with the *tuple assignment*.

One subtle but important point:  a short variable declaration does not
necessarily *declare* all the variables on its left-hand side.  If some of
them were already declared in the *same* lexical block, then the short
variable declaration acts like an *assignment* to those variables.
But it should be declared at least one new variable, otherwise it is a
syntax-error.
