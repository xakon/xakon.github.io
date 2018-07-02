Environment Setup
-----------------

There are many ways to setup an development environment for Linux
development.  I'll try to document some of these options as I try them in
action.

It is better to have a git repository of the mainline kernel.  Of course,
one can just download the sources of a single version of kernel and play
with them.

There are some examples at [/dev/loop.org.uk](http://fs.devloop.org.uk/)
about using various virtualization methods to run development versions of
Linux.  I will try to summarize them them below but you can always have a
look at these options for quick reference.

### Glossary ###

Host::
   The machine where the kernel repository resides and development takes
   place

Guest::
   The computer where new kernel is installed and tested

### Quick Reference ###

			Kernel Source	Kernel Build		Module Source
			------------------------------------------------------
Single-Host		src/linux/	tmp/build/linux		src/custom/module
UML			src/linux/	tmp/build/linux		src/custom/module

### Single Host Machine ###

This is the least secure method.  Both development and testing takes place
into a single machine.  Source code and build are place in separated
directories, but installation of kernel and its modules take place on
standard ``/boot`` directory, aside with a production kernel.

This method is the simplest to setup (clone linux kernel in a directory,
configure and build it in another one or at the same, install at standard
directory), but it requires to reboot the system after a new kernel
installation.  Furthermore, problems on new kernel might damage host's
file-system or other hardware resources.

Yet, it is quite conveniently to use this setup method when developing
out-of-source-tree modules:  the source code for the module resides in its
separate directory and after building it the developer can test the module
by dynamically loading/unloading it.  Still, if the module crashes the
kernel the whole system becomes unstable and might harm any resources.

### chroot ###

TODO

### User Mode Linux ###

A really powerful and yet easy way to run Linux, virtualize using software
a guest machine and debug the kernel.  Since this topic is quite long, it
deserves to be placed in a separate file.

### KVM/QEMU ###

TODO

### VirtualBox/VMware ###

TODO
