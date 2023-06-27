SBCL
====

_Steel Bank Common Lisp (SBCL)_ is one of the most popular _Common Lisp_ implementations.
It's home page can be found [here][sbcl].

[sbcl]:	http://www.sbcl.org/


### Debugging ###

_Optimization qualities_ is a group of settings, which allow to specify what the
compiler should optimize for.  These _qualities_ include speed, space, compilation
speed, safety, and debugging.

To enable debugging, we should enable the relevant _optimization quality_.

```lisp
(declaim (optimize (debug 3)))
```
