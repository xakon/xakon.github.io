DOS
===

Yes, it's true that MS-DOS is dead since long ago.
Yet, there is sometimes a need to run old programs or games on that platform.
Here I present some solutions.


### DOSBox

[DOSBox](https://www.dosbox.com/) is a Linux program, that emulates MS-DOS.
It reads files directly from a Linux directory, so the transfer of information
between the 2 worlds is seamless.  The only problem is the performance, not that
it should matter too much anymore.


### FreeDOS

[FreeDOS] is a complete rewrite of the MS-DOS.
As that, it should be installed on a hard-disk and run on a virtual machine
(or on a physical machine).  Actually, it comes with more features than the
latest MS-DOS, but its compatibility is astonishing.  The best way to run old
DOS programs.

[FreeDOS]:	http://www.freedos.org/

#### Tools ####

[FreeDOS] comes pre-installed with many tools that were included in the
MS-DOS 6.22, but some of them are missing, due to their complexities or
copyrights.  Some examples are the GW-Basic (recently open-sourced by
Microsoft), `debug`, and others.

Here follows a list of some compatible or alternative open-source programs.

 - [IDebug](https://ulukai.org/ecm/web/):
   A clone of `debug`.  In this site there are more useful tools about Assembly.
 - [Bywater Basic](https://sourceforge.net/projects/bwbasic/):
   An alternative (and more powerful) to GW-Basic.


### DOS Subsystem for Linux ###

_DOS Subsystem for Linux_ integrates a real Linux environment into MS-DOS
systems, allowing users to make use of both DOS and Linux applications from the
DOS command prompt.

It can be found in [Github](https://github.com/charliesome/doslinux).


### EMU2 ###

A simple text-mode x86 + DOS emulater.

If I would like to run a DOS text-only program under Linux, then this program
can help me out.


### Libraries ###

 - [dos-like](https://github.com/mattiasgustavsson/dos-like):
   Programming library, kind of like a tiny game engine, for writing games and
   programs with a similar feel to MS-DOS productions from the early '90s.
   But rather than writing code that would run on a real DOS machine, `dos-like`
   is about making programs which run on modern platforms like Windows, macOS,
   and Linux, but which attempts to recreate the look, feel, and sound of old
   DOS programs.
