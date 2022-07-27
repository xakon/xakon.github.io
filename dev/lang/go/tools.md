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


`sprof`
-------

A static profiler, which can analyze a running process without any performance
bottlenecks or special compilation.

It is an independent tool, which can be found at
[Github](https://github.com/felixge/sprof).


gotests
-------

Automatically generate table-driven tests for a function/type.
It can be used from the command-line or integrated with an editor.
It can be found at [Github](https://github.com/cweill/gotests).


Go Template Preview
-------------------

An online tool that easily helps to preview the results of some _Go templates_
based on their inputs.

It can be found at <https://gotemplate.io/>.
