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

 - [The Linux Kernel Module Programming Guide](https://sysprog21.github.io/lkmpg/):
   A free book, officially written and supported by kernel maintainers, teaches
   how to write kernel modules, for many Linux versions.  Its source can be
   found at [Github](https://github.com/sysprog21/lkmpg), from where I can build
   PDF or other documents.
 - [Searchable Linux Syscall Table for x86 and x86_64](https://filippo.io/linux-syscall-table/)
 - [Linux kernel user's and administrator's guide](https://www.kernel.org/doc/html/latest/admin-guide/)
 - [Linux From Scratch (LFS)](http://www.linuxfromscratch.org)
 - <http://www.win.tue.nl/~aeb/linux/>
 - [Rust Linux Kernel Development](https://www.jackos.io/rust-kernel/rust-for-linux.html)
 - [Rust Kernel Programming](https://coderjoshdk.github.io/posts/Rust-Kernel-Programming.html)
 - [Write Your Own OS](http://mikeos.berlios.de/write-your-own-os.html)
 - [Linux Insides](https://0xax.gitbooks.io/linux-insides/)
 - [Linux Kernel Teaching](https://linux-kernel-labs.github.io/)
 - [Understanding the Linux Virtual Memory Manager](https://www.kernel.org/doc/gorman/):
   An free available book to download, which is considered the only reference
   point to the memory-management system of the kernel.  Even though the
   information in the book is pretty outdated, it still contains many nice hints
   on working with the kernel.
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
