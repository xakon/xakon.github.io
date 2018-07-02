User-mode Linux Kernel
----------------------

Linux is a powerful toy!  One of its greatest features is its ability to be
built and ran on top of itself as a user-mode application!  This feature is
vital for development and debugging.  Actually, it's a form of software
virtualization, where a target machine (the UML kernel) is executed from a
host computer.  Furthermore, this emulation happens using software and at
user-mode, which means that a faulty kernel or driver will just abort as a
usual Linux application.

It was originally designed as a kernel developer's tool, to speed up
development times and reduce hardware requirements. Each instance of
User-Mode Linux is safely contained and isolated from the interacting
directly with hardware, and from all other instances of UML running on the
same computer. This enables all sorts of test-to-destruction scenarios,
without damaging the host system or neighboring VMs, and without requiring
reboots when things go blooey.

With User-Mode Linux (UML), you can set up multiple virtual machines that
are isolated from each other and from the hardware.  This lets you test
applications all the way to failure without breaking the host system -- or
even requiring a reboot.

Note: The following information is extracted from the very detailed and
helpful tutorial found at:
   <http://www.ime.usp.br/~baroni/docs/uml-en.html>

More information has been found at the excellent article of Carla Schroder
at IBM developerWorks, [Introduction to User-Mode Linux][usermode-linux].


[usermode-linux]:	http://www.ibm.com/developerworks/linux/tutorials/l-uml/

### Synopsis ###

In short, the development model of using UML after its setup goes like this:

      $ # after changing kernel sources or modules
      $ make ARCH=um

      $ # installing necessary modules (optional)
      $ sudo mount -o loop root_fs/develop_fs /tmp/mounts/system
      $ sudo make ARCH=um modules_install INSTALL_MOD_PATH=/tmp/mounts/system
      $ sudo umount /tmp/mounts/system

      $ # run the system
      $ ./vmlinux ubda=root_fs/develop_fs mem=256M

### Setup ###

In order to run the "User Mode Linux" we need a testing Operating System.
Apart from using the same host both for development and testing, it is much
better to create a minimal system capable only for our testing purposes.  Of
course, nothing prevents us to extend this system to perform much more
operations by installing appropriate programs, but it's always better to
keep it minimal for disk usage and any software conflicts that might arise.

The quickest way to create an operating system based on Linux is to install
an existing distribution (or, better, to create one either by cloning
another one or by creating it from scratch).  Here, we can find some notes
on creating a system using some famous distributions.

I've created a list of installing some of the most well-known distributions
that might be useful for kernel development.

 - Debian	# TODO (link to debian.md)
 - Fedora
 - ...

After having a target system for setting, we can proceed at the familiar
development cycle: configure the kernel, build it, install it and test it.

One can configure a kernel source to be built as usual, but using the ``um``
architecture as a target.

For example:

   $ make ARCH=um nconfig
   $ make ARCH=um linux
   $ make ARCH=um modules


### Resources ###

- </usr/share/doc/user-mode-linux/>
- <http://www.ime.usp.br/~baroni/docs/uml-en.html>
- <http://www.ibm.com/developerworks/linux/tutorials/l-uml/>
