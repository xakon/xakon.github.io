=========
Debuggers
=========

Some notes and resources for understanding and building a debugger.

Note, that for a list of various debuggers and tools, there is a separate page,
which can be found at `"Tools: debuggers" <tools/debuggers.md>`_.

Resources
=========

Online
------

The article `Learning about debuggers <https://werat.dev/blog/learning-about-debuggers/>`_
contains so many resources, that it is impossible to copy all of them here.  Instead,
try to follow them at the original site.  It really pays off just to skim at those
resources (courses, books, papers, tutorials, articles).


Terminology
===========

I'm always confused with the terms used in various debuggers.
It's time to resolve them for good!

breakpoint
    Stop execution at specified line (function, ...)
conditional breakpoint
    Stop execution at specified line (function, ...) when a condition is met
hit breakpoint
    Stop execution at specified line (function, ...) after a number of passes
watchpoint
    Stop execution after a variable has changed value
catchpoint
    Stop execution after an exception is raised
