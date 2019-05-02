Make
====

Some notes about GNU make(1) or BSD make(1).

 - [Notes on Writing Makefiles][1]:
   Some nice principles with the addition of realistic Makefiles.
   Use this article as a scratch reference:  most of the time it's exactly
   what I want to build.

 - [Self-Documented Makefile][2]:
   An excellent technique of documenting the commands in Makefiles, but
   it needs some improvements.  For example, I would prefer to place a document
   usage *after* the make rule, which will be ignored by the shell invocation
   after all.  This style fits better to the Python's doc-comments, although I
   usually prefer the C-way of documenting functions.


### References

[1]:	http://eigenstate.org/notes/makefiles
[2]:	http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
