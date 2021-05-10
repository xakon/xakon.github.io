Syntax
======

Some notes I take during my readings about Go.

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

### Types ###

Multiple variable declarations can be grouped using parentheses.
It can be used for `const` and `import`, too.

Parallel assignment: `a, b := 20, 16`

`iota` can be used to increment constant values (?)
    ```
    const (
      a = iota
      b = iota
    )
    ```

Constants may or may not define their types:
   ```
   const (
      a = 1			// integer
      b string = "Hello"	// explicit
   )
   ```

Strings in Go are immutable.

There are raw strings, using the backtick character.

Characters have the `rune` datatype (Unicode encoded).

Complex numbers are `complex64` and `complex128`.

There is a special built-in type, called `error`.

### Control Flow ###

`for` has 3 forms.  Short declaration make it easy to declare the index variable
right in the loop:
   ```
   sum := 0
   for i := 0; i < 10; i++ {
      sum += i
   }
   ```

`++` and `--` are statements, not expressions.  There is also no comma operator.
   ```
   // Reverse a string
   for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
      s[i], s[j] = s[j], s[i]		// parallel assignment
   }
   ```

`break` and `continue` can accept a label so that it leaves the specified loop.

Keyword `range` is an iterator and can be used to loop over slices, arrays,
strings, maps and channels.

`switch` is very flexible.  The expressions need not be constants or even integers.
The cases are evaluated top-down until a match is found.  If no expression exists,
it defaults to `true`.  It is idiomatic to write `if-else-if-else` chains using
`switch`.  There is no automatic fall through in cases, one has to explicit
request it using the `fallthrough` keyword (quite rare).  Cases can be represented
in comma-separated lists.

Built-in functions are pre-defined and there is no need to import any package
to use them.  They are documented in the `builtin` pseudo-package.

 - Integral types are "array", "slice" and "map".

 - A composite literal can be used to initialize an array, slice or map:
   ```
   a := [3]int{ 1, 2, 3}
   a := [...]int{1, 2, 3}	// shortened-form, Go figures out a's size
   ```

 - A slice is similar to array, but can grow and are reference types.
   They always refer to the underlying array, and they are merely pointers to
   this array.  If passed to a function, the changes are reflected to caller's
   array.

 - Reference types are created with `make`.

 - `append` and `copy` built-ins can alter a specified slice.

### Functions ###

A function can optionally be bound to a specific type, a *receiver*.
It is then called a *method*.  The receiver is declared just after
the keyword `func`.

There are no functions contained in other functions, but we define
unnamed functions, which act like closures.

Functions can return multiple values, and optionally be named.
If no value is returned, the return part of function's declaration
is omitted.

If a return value is named, we can treat it as a regular variable,
assign it any value we want at any place, and upon function's return
the last assigned value will be returned!  No need for explicit return.

Some functions, which are called *variadics*, can accept variable
number of parameters.  Its syntax, though, is very weird.

The `defer` statement let the user install cleanup actions for a
variable, after it becomes out of scope.
