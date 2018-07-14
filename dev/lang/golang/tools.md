Go Tools
========

build
-----

With the `-race` parameter enabled, Go compiler adds a race detector in the code.
Then, simply running the resulted executable will print any race conditions that
exist in the program.


oracle
------

A code inspection tool.  Very useful and can be used to query many properties
about a Go codebase.  It can be installed using Go itself:

```shell
   $ go get golang.org/x/tools/cmd/oracle
```