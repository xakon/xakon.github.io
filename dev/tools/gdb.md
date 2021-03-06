GDB
===

Next time I'm going to use [GDB][gdb-home] again, let's make sure I've read again
this excellent article with [GDBTips][gdb-tips1].


Resources
---------

 - [GDB Dashboard][gdb-dashboard]
 - [dbg](https://github.com/ebcfr/dbg):
   A lightweight graphical frontend for gdb to debug local or embedded apps.
 - [Tips for Productive Debugging with GDB][gdb-tips1]
 - [GDB: Quick guide to make your debugging easier](https://johnysswlab.com/gdb-a-quick-guide-to-make-your-debugging-easier/)


[GDB]:		https://www.gnu.org/software/gdb/
[gdb-home]:	https://www.gnu.org/software/gdb/
[gdb-dashboard]: https://www.gnu.org/software/gdb/
[gdb-tips1]:	https://metricpanda.com/tips-for-productive-debugging-with-gdb


Tips
----

### Useful commands ###

 - `gdb --args`
 - `start`:  start execution, automatically stop at `main()`
 - `until`: continue execution until we reach a certain line
 - `ignore`: stop at breakpoint after `n` hits
 - `info locals`
 - `bt full`
 - `bt number`
 - `command`: execute multiple commands on breakpoint hit
 - `dprintf`: a breakpoint with a `printf`
 - `watch`: stop if a variable changed
 - `thread apply all`: execute command for all threads.  For example,
   `thread apply all bt`
 - `gdb -x script.in`:  execute commands from a script
 - `save breakpoints`: save in file set breakpoints, load them with `source` or `-x`

### Recording ###

[GDB] now supports reverse execution, to trace back to the problem, when a bug
occurs.  There are many commands to support this feature, all of them start
`reverse-` and they are usually abbreviated with the `r` prefix.  For example:

 - `reverse-continue`, or `rc`
 - `reverse-finish`
 - `reverse-next`, or `rn`
 - `reverse-nexti`, or `rni`
 - `reverse-step`, or `rs`
 - `reverse-stepi`, or `rsi`

Reverse execution is very slow, so it is critical to start it slightly before
the bug occurs.

### Repeat execution until a failure ###

Use a command to restart a program until the bug occurs.

    start
    set pagination off
    break exit
    command 2
    run
    end
    continue
