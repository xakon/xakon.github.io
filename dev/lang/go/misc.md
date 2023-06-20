Use `bufio.Scanner` to split a stream into lines.

https://go.libhunt.com/

[Go Slice Tricks Cheat Sheet](https://ueokande.github.io/go-slice-tricks/):
A visualisation of the official [Go Wiki page](https://ueokande.github.io/go-slice-tricks/).

Testing Conventions
-------------------

A test file should have a name of the form: `*_test.go`.
Usually, code is written as `math.go` and `math_test.go`.

In an `export_test.go` we can export any internal variables we would like to
access during our _external tests_.
With a name of the form `*_internal_test.go` we define _internal tests_.
Go allows us to have multiple test _packages_ inside a directory.

Another convention in testing are the `example_*_test.go` files, where we
include testable examples in the documentation.
An _example_ in Go works like a _doctest_ in Python:
The code from the _example function_ is included in the documentation of the
_package_, and its code is verified from the `go test` tool **every time** we
execute it.  Essentially, it is live and testable documentation.
The _examples_ work by printing the expected result in the STDOUT, and then
the `go test` tool verifies the actual execution.

_Test function_ names should follow the pattern:
   `func TestXxx(t *testing.T)`.
_Benchmark function_ names should follow the pattern:
   `func BenchmarkXxx(b *testing.B)`.
_Example function_ names should follow the pattern:
   `func ExampleXxx()`
The expected output of the _example function_ is denoted with a Go comment, that
starts with `// Output:`.  Alternatively, the comment that starts with `//
Unordered output:` will only check for any order of the given output.
The expected value(s) can be inlined or put into the next comment line.

The _Example functions_ can be placed inside **any** of the _test files_.
But, if they are placed in separate _Example file_, then there can be only one
such function defined.

### Caching ###

While running Go tests using the `go test` tool, it caches the results of the
tests, so that it doesn't have to execute test cases, which are not affected by
the code changes.

Directories which are used for caching are:

 - `$HOME/.cache/go-build`
 - `$HOME/go/pkg/mod`
