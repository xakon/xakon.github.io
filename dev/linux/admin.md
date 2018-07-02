Linux Administration
====================

Distributions suitable for administration tasks:

 - [Finnix](http://www.finnix.org/):
   Debian-based, self-contained, bootable LiveCD.  Above all, Finnix is small.
   Does not include any desktop or productivity tools.

 - [GRML](http://grml.org/):
   Debian-based, self-contained, bootable LiveCD.  GRML provides automatic
   hardware detection.  On-the-fly operation, no harddisk necessary to run.
   Huge size but has on-the-fly decompression.  It includes some minimalistic
   window managers.

 - [SystemRescueCD](http://www.sysresccd.org/):
   Gentoo-based.

Domain Names
------------

I have registered the following domain names:

 - [xakon.tk](http://xakon.tk):
   Registered at [dot.tk](http://my.dot.tk/)


Perfomance Analysis
-------------------

These commands have been extracted from a great article published by
[Netflix](http://techblog.netflix.com/2015/11/linux-performance-analysis-in-60s.html).
Keep them here as a reference:

```sh
uptime
dmesg -T | tail
vmstat 1
mpstat -P ALL 1
pidstat 1
iostat -xz 1
free -m
sar -n DEV 1
sar -n TCP,ETCP 1
top
```
