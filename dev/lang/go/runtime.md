Runtime Notes
=============

Using the `runtime.GOMAXPROCS()` we can control how many logical processors
the application will create.  But, we can also control this value with the
`$GOMAXPROCS` shell variable.


Variables
---------

The Go runtime can alter its functionality with the use of some environment variables.
Here comes a list of these variables.  For more information, refer to the original
article by [Dave Cheney][go-variables].

 - `GOROOT`:		Location of Go standard libraries.
 - `GOGC`:		Control the aggressiveness of the Garbage Collector.
 - `GODEBUG`:		Set of key=value option pairs.
 - `GOTRACEBACK`:	Control level of details for panics.
 - `GOMAXPROCS`:	Control nr. of allocated threads for goroutines.


[go-variables]:   http://dave.cheney.net/2015/11/29/a-whirlwind-tour-of-gos-runtime-environment-variables
