Contents
========

Here I keep some notes about various aspects and topics relating Linux
Kernel Programming and Linux Device Drivers as I read and study about them.

 - config:
      Notes about Kconfig and kernel's configuration

 - drivers:
      Notes about the device drivers

 - [Kernel Coding Style][code-style]

[code-style]:	https://01.org/linuxgraphics/gfx-docs/drm/process/coding-style.html


Utilities
---------

 - [Elixir](http://elixir.free-electrons.com/linux/lastest/source/):
   An online reference tool to browse and search the kernel source tree.
   Provided by the [Free Electrons](http://free-electrons.com), an embedded
   Linux company, it supports also other source trees, like Busybox and u-boot.

 - `scripts/kconfig/merge_config.sh`:
   Merge different files containing configuration options.
   Helps to keep organized configuration options based on various tasks
   or setups.

 - `addr2line`:
   Convert addresses into file names and line numbers.
   Useful to find which file/function an address in a dump is associated with.

 - `scripts/decodecode`:
   Convert a bunch of byte-codes into assembly opcodes.

 - `pahole`:
   Grep (?) the kernel directory for some structures?

 - `ftrace`:
   This is a tracing mechanism added to the kernel, in order for a user to monitor
   the events as they take place in the kernel.  The mechanism is rather low-level
   (it involves setups in the `sys` procfs), but there are also some higher-level
   tools to abstract these details.  For more information, have a look at:
      `Documentation/frace.txt`, and `Documentation/events.txt`.

 - [vido](https://github.com/g2p/vido):
   Easily create setup to run a `qemu`-based instance, without disk (using the
   host's file-system) or any other external resource.

 - [virtme](https://github.com/amluto/virtme/):
   A _QEMU_ wrapper that allows the developer to run a custom kernel fast,
   using the host Linux distribution or a `rootfs`, without needing a full disk
   image.

 - [Interactive Linux kernel map](https://makelinux.github.io/kernel/map/):
   Grouped into kernel sections, the map is interactive and we can inspect many
   components on the fly.


Resources
---------

 - [Linux From Scratch (LFS)](http://www.linuxfromscratch.org)
 - <http://www.win.tue.nl/~aeb/linux/>
 - [Write Your Own OS](http://mikeos.berlios.de/write-your-own-os.html)
 - [Debugging a kernel crash](https://vegardno.blogspot.nl/2016/08/sync-debug.html)
 - [Getting Started with ftrace](https://jvns.ca/blog/2017/03/19/getting-started-with-ftrace/)
 - [Debugging the kernel using ftrace - part 1](https://lwn.net/Articles/365835/)
 - [Debugging the kernel using ftrace - part 2](https://lwn.net/Articles/366796/)
 - [Secrets of the Linux function tracer](https://lwn.net/Articles/370423/)
 - [trace-cmd: A front-end for ftrace](https://lwn.net/Articles/410200/)
 - [ftrace: The hidden light switch](https://lwn.net/Articles/608497/)
 - [Sane Kernel Development](https://brennan.io/2017/03/08/sane-kernel-dev/)
 - [Build yourself a Linux](https://github.com/MichielDerhaeg/build-linux):
   Short Tutorial about Building a mini Linux System.
 - [Anatomy of of Linux kernel development](https://github.com/raminfp/linux-4.8.0-netfilter_icmp)
 - [Ubuntu Kernel Build](https://wiki.ubuntu.com/KernelTeam/GitKernelBuild)
 - [Debian Kernel Handbook](https://kernel-team.pages.debian.net/kernel-handbook/)
 - [Lord of io_uring](https://unixism.net/loti/):
   Online book/tutorial with extensive examples on how to use the new big name
   in kernel development, _io_uring_!
