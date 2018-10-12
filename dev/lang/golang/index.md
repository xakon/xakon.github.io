Go
==

Resources
---------

### Online Resources

 - [Gopher Videos](http://gophervids.appspot.com/)
 - [Go Fragments](http://www.gofragments.net/)
 - [Go Web Examples](https://gowebexamples.github.io/)
 - [Golang tutorials](https://golangbot.com/)
 - [Your Basic Go](http://yourbasic.org/golang/)
 - <http://jen20.com/2015/02/01/moving-to-go-what-i-wish-id-known.html>


### Books

 - [The Little Go Book](http://openmymind.net/The-Little-Go-Book/)
 - [An Introduction to Programming in Go](http://www.golang-book.com/books/intro)
 - [Build Web Application with Golang](https://astaxie.gitbooks.io/build-web-application-with-golang/)
 - [Building Web Apps with Go](https://codegangsta.gitbooks.io/building-web-apps-with-go/)
 - [Learning Go](https://miek.nl/go/)
 - [Let's learn Go!](http://go-book.appspot.com/)
 - [Go Traps](https://go-traps.appspot.com/)
 - [Network programming with Go](https://jan.newmarch.name/go/)
 - [Practical Cryptography With Go](https://leanpub.com/gocrypto/)


## Libraries

### General

 - [cobra](https://github.com/spf13/cobra):
   Advanced CLI scanner, like git, hg and others.

 - [pflag](https://github.com/ogier/pflag):
   Drop-in replacement for Go's `flag` package,
   implementing POSIX/GNU-style `--flag`.

 - [CodeGangsta](https://github.com/codegangsta/cli):
   Another library to parse program's command-line arguments & commands.

 - [nanolog](https://github.com/ScottMansfield/nanolog)

### Web Development

 - [Tiger Tonic](https://github.com/rcrowley/go-tigertonic):
 Easy to use implementing Web Services.


## Syntax

Some notes I take during my readings about Go.

### Types

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

### Control Flow

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

### Functions

A function can optionally be bound to a specific type, a *receiver*.
It is then called a *method*.  The receiver is declared just after
the keyword `func`.

There are no functions contained in other functions, but we define
unnamed functions, which act like clojures.

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


#### Idioms

    v, ok = monthdays["Jan"]		// ok == true if "Jan" in monthdays
    func (file *File) Write(b []byte) (n int, err error)

##### Looping over a string

```go
// \x80 is an illegal UTF-8 encoding
for pos, char := range("日本\x80語" {
   fmt.Printf("character %#U starts at byte position %d\n", char, pos)
}
```
