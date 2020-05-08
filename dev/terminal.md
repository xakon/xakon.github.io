Terminal
========

The dominant library for programming in terminal-based applications is the [ncurses][ncurses].
There are many bindings of this library for almost every programming language.
It is even shipped with the Standard Library in Python.

Another lightweight and well promised library is the [termbox][termbox].
It also has a lot of bindings.

All the programs that use [ncurses][ncurses], they read the _terminfo_ database
for available terminals.  With the `infocmp -D` command we can see which
directories are searched by default, or print current settings with `infocmp`.
We can override these paths by using the `$TERMINFO` variable.


[ncurses]:	https://invisible-island.net/ncurses/
[termbox]:	https://github.com/nsf/termbox
