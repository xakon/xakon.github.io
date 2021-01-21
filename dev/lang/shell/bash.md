Shell Scripts
=============

## Bash

Great tip I've read at [netmeister.og](http://www.netmeister.org/rtfmsh/370971886509121536.html):
Prepend some commands with the `${DONT}` variable, which could be populated with `echo`, when a
debug setting has been activated:

    cleanup() {
       ${DONT} rm -rf "${_TMPDIR}"
    }

If not in debug mode, the `DONT` variable is left empty.

Also, another *must* tip is the next:  ensure your script at the beginning to set proper file
permissions for its temporary files: `umask 077`.

### Prompt

Tom Ryder of [Arabesque](http://www.sanctum.geek.nz/) has a nice programmable Bash prompt.
Why not study it in depth?

He also suggests having functions to turn on/off glamorous prompts on demand.
I could enhance this idea having only one function accepting some arguments, e.g.:
    $ prompt on
It can be really helpful while copying text from terminal to paste it, for example, here!


## Utilities

 - `mktemp` is the program that creates a unique, temporary file in the correct
   place (usually inside `$TMPDIR` or `/tmp` if the latter is not set) and prints
   the name of the created file.  Pass to it the `-d` argument and it will create
   a temporary directory.

 - [shUnit2](https://github.com/kward/shunit2):
   xUnit Test Framework.
 - [roundup](https://bmizerany.github.io/roundup/):
   Test framework.
 - [bats](https://github.com/sstephenson/bats):
   A nice framework for testing Bash functions and scripts.


## Terminal

### ANSI Colors

The valid display attributes for 16-color terminals are:

 - Style
   * 0 — Reset all attributes
   * 1 — Bright
   * 2 — Dim
   * 4 — Underscore
   * 5 — Blink
   * 7 — Reverse
   * 8 — Hidden
 - Foreground
   * 30 — Black
   * 31 — Red
   * 32 — Green
   * 33 — Yellow
   * 34 — Blue
   * 35 — Magenta
   * 36 — Cyan
   * 37 — White
 - Background
   * 40 — Black
   * 41 — Red
   * 42 — Green
   * 43 — Yellow
   * 44 — Blue
   * 45 — Magenta
   * 46 — Cyan
   * 47 — White

If multiple values needed, they can be chained together, like this:
    \[\e[0;4;37;44m\]

It is also a good practice to "name" these constants using variables:

    color_red='\[\e[31m\]'
    color_blue='\[\e[34m\]'
    color_reset='\[\e[0m\]'
