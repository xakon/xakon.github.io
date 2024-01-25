Idioms
======

A collection of some common Go idioms.

### Omit _dev_ dependencies from binary ###

Like in Python or JavaScript, we can install per project specific dependencies,
used only during development.  There are 2 approaches where we can install
specific versions and avoid included them in the final binary.

#### Using `tools.go` ###

Place all the _dev dependencies_ in a `tools.go`, omit including it in the
target binary using build flags:

```go
// go:build tools

package tools

// Dev dependencies
import (
    _ "github.com/golangci/golangci-lint/cmd/golangci-lint"
    _ "mvdan.cc/gofumpt"
)
```

`go mod tindy` will track the dependencies, but `go build ...` won't include
them in the final binary.  If we **do** want them to be included, then we can
specify the relevant tags to the `go` tool:  `go build --tags tools ...`.

#### Using Go 1.17 and `go run` ####

Alternatively, we can specify the relevant versions of each dependency at the
command-line (or inside a `Makefile` to avoid repetitions), like this:

```shell
$ go install honnef.co/go/tools/cmd/staticcheck@v0.3.1
# or without first installing it
$ go run honnef.co/go/tools/cmd/staticcheck@v0.3.1 ./...
```

This technique can work with embedded `go:generate` flags in the script:

```go
package main

import "fmt"

//go:generate go run golang.org/x/tools/cmd/stringer@v0.1.10 -type=Level

type Level int

....
```

Then calling `go generate .` will download and use the correct versions of the
_dev dependencies_.


### Check for key in a `map` ###

    v, ok = monthdays["Jan"]		// ok == true if "Jan" in monthdays

### Define method with multiple return values ###

    func (file *File) Write(b []byte) (n int, err error)

### Loop over a string ###

```go
// \x80 is an illegal UTF-8 encoding
for pos, char := range("日本\x80語") {
   fmt.Printf("character %#U starts at byte position %d\n", char, pos)
}
```
