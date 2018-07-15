Minidumps
=========

Create core dumps for a crashed process where only the .data sections (not code)
are stored in the output file.  In essence, produce core dumps with smaller size
and compact information.

This issue will need changes to both the kernel and the debugger which reads the
core dumps.

An idea taken from FreeBSD core dumps.


Resources
---------

 - <https://www.bsdcan.org/2017/schedule/attachments/405_freebsd-coredump-history>
