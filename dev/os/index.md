Operating Systems
=================

Resources
---------

### Books ###

The following books are recommended at the Udacity's MOOC,
"Introduction to Operating Systems":


    Modern Operating Systems, 4/e
    Andrew Tanenbaum, Herbert Bos
    Pearson, 2014
    013359162X
    978-0133591620

    Operating System Concepts, 9/e
    Abraham Silberschatz, Peter Baer Galvin, Greg Gagne
    Wiley, 2012
    1118063333
    978-1118063330

    Operating System Concepts Essentials, 2/e
    Abraham Silberschatz, Peter Baer Galvin, Greg Gagne
    Wiley, 2013
    1118804929
    978-1118804926

    Operating Systems: Three Easy Pieces
    Remzi Arpaci-Dusseau, Andrea Arpaci-Duesseau
    Lulu, 2015
    http://pages.cs.wisc.edu/~remzi/OSTEP/


All these books come with accompanying material, as extra slides, articles,
exercises, solutions, videos.


### Systems ###

 - [The seL4 Microkernel](https://sel4.systems/):
   The world's most high-assured operating system kernel, huge emphasis on
   security and performance.

 - [Redox](http://www.redox-os.org/):
   Unix-like Operating System written in Rust, aiming to bring the innovations
   of Rust to a modern micro-kernel and full set of applications.

   Actually, I read a very nice article, introduction to Redox, and got
   immediately sold with it!  The article can be found at:
   [Programming for Redox OS](https://dev.to/legolord208/programming-for-redox-os-4124).

 - [How to write a simple Operating System][mikeos-guide]:
   [MikeOS][mikeos] is a simple, x86-based OS, written in Assembly and with a
   goal to teach fundamentals of OSes to students.  There are also other forks
   of the OS that add other features (x86-64 support, ARM support, etc.).

 - [Theseus OS](https://github.com/theseus-os/Theseus):
   An experimental OS, written in [Rust](https://www.rust-lang.org/).
   It contains detailed instructions on how to build and run it on QEMU and
   other platforms.

 - [ToaruOS](https://toaruos.org/):
   Another experimental OS, with graphical interface, custom kernel, and
   libraries.

 - [RetroBSD](https://github.com/RetroBSD/retrobsd):
   A lightweight UNIX-like OS, inspired and based by BSD 2.11, for 8-bit and
   16-bit MCUs.  Even though the development seems to have stopped, it still
   can serve as an education material and inspiration to some C programmers.

 - [MenuetOS](https://menuetos.net/):
   An OS for the PC, written fully in assembly language (64bit and 32bit).

### Guides ###

 - [Hack the Kernel](https://www.ops-class.org/):
   Includes everything you need to learn about operating systems online.
 - [Operating Systems: from 0 to 1](https://github.com/tuhdo/os01):
   Nice tutorial on how to write an OS from scratch.
 - [Writing an OS in Rust](http://os.phil-opp.com)
 - [intermezzOS (A little OS](https://intermezzos.github.io/):
   A teaching operating system, specifically focused on introducing systems
   programming concepts to experienced developers from other areas of
   programming.  There are 2 editions of the book, but as of now, both of them
   are work-in-progress.
 - [Linux From Scratch][LFS]:
   A demonstration of how to build a Linux distribution by compiling everything,
   including the Kernel, the C library, and all the programs.
   I found a [Github repository][lfs-docker] with a helpful Docker image to
   play with _Linux From Scratch_.  This book scratches only the start of
   creating a custom Linux distribution.  It is continued in other book series,
   like for example in [Beyond Linux From Scratch][BLFS].  At this point, it might
   be useful to use the [AryaLinux](http://aryalinux.org/), as it is not only a
   Linux distribution, but it also provides build scripts, based on
   [Linux From Scratch][LFS], to build from the scratch a distribution.
 - [Build an Operating System for the Raspberry Pi](https://jsandler18.github.io/)
 - [Writing a "bare metal" OS for Raspberry Pi 4](https://github.com/isometimes/rpi4-osdev)
 - [Learning OS development using Linux Kernel & Raspberry Pi][rasp-pi-os].
 - [Rolling your Own Bootloader](http://wiki.osdev.org/Rolling_Your_Own_Bootloader)
 - [Memory Management Reference](http://www.memorymanagement.org/)
 - [System Programming Wiki](https://github.com/angrave/SystemProgramming/wiki)
 - [Computer Science from the Bottom Up](https://www.bottomupcs.com/):
   Despite its title, this online book is mainly focused on OS design and
   principles.


[mikeos]:	http://mikeos.sourceforge.net/
[mikeos-guide]:	http://mikeos.sourceforge.net/write-your-own-os.html
[lfs-docker]:	https://github.com/reinterpretcat/lfs
[rasp-pi-os]:	https://github.com/s-matyukevich/raspberry-pi-os
[LFS]:		http://www.linuxfromscratch.org/
[BLFS]:		http://www.linuxfromscratch.org/blfs/
