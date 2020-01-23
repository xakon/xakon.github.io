Embedded Development
====================

## Resources

 o [Embedded-Linux Wiki (elinux.org)][elinux]
 o [Barr group][barr]
 o [CodeBender][codebender]:
   Some interesting Embedded projects, with lots of different boards and staff.
 o [Bithacks](https://graphics.stanford.edu/~seander/bithacks.html)
 o [OS Development Wiki](http://wiki.osdev.org/Main_Page)
 o [Adafruit.com](https://adafruit.com):
   Full of resources for embedded projects.
 - [Rust Embedded](https://github.com/rust-embedded):
   Resources, tutorials, books, and code for embedded programming using Rust.


## Tools

 o [Crosstool-NG](http://crosstool-ng.github.io/):
   A toolchain is the most important tool in order to build a custom Linux
   distribution for an embedded device.  There are some of them, "Crosstool-NG"
   is considered the latest best one.

 o [Linaro][linaro]:
   _Linaro_ provides many useful toolchains, libraries, documentation, and tools
   for the ARM ecosystem.

 o [Rust Embeddded](https://github.com/rust-embedded):
   A huge collection of documentation, resources, libraries, related to Embedded
   Programming using [Rust](https://www.rust-lang.org/).


## Libraries

Some useful libraries for embedded systems.

 o [Sophia][sophia]:
   A modern embeddable key-value database designed for a high load environment.
   It has unique architecture that was created as a result of research and
   rethinking of primary algorithmic constraints, associated with a getting
   popular Log-file based data structures, such as LSM-tree.

   It is fast and easy to use.

 o [libPhenom][libphenom]:
   An eventing framework for building high performance and high scalability
   systems in C.

 o [Mongoose](https://docs.cesanta.com/mongoose/master/):
   A Networking Library.

 o [lwIP](https://savannah.nongnu.org/projects/lwip/):
   A Lightweight TCP/IP stack.


## Books

 o _Better Embedded System Software_.  It comes with an accompanying blog:
   <http://betterembsw.blogspot.nl/>

 o _Writing a Linux Kernel Module_.  A series of blog posts:
   <http://derekmolloy.ie/kernel-gpio-programming-buttons-and-leds/>

 o _Embedded Linux Primer, 2/e_

 o _Making Embedded Systems: Design Patterns for Great Software_  
   O'Reilly, 2011
   Elecia White


## Videos

 o [Embedded Systems Programming Course][course]:
   A very nice introduction to embedded programming using ANSI C and with practical examples
   on a real board.  I need to get this board and start playing around!


## RTOS

An embedded device needs specialized and often tiny OSes, both in disk size, but
also in RAM requirements.  Linux is an option, but it is rather large for this
purpose.  Some alternatives are:

 - [Contiki](http://www.contiki-os.org/)

 - [FreeRTOS](http://www.freertos.org/)

 - [Mbed OS](http://www.mbed.com/en/platform/mbed-os/)

 - [ThreadX](http://rtos.com/products/threadx/)

 - [NuttX RTOS](http://www.nuttx.org/)

 - [RIOT OS](http://riot-os.org/)

 - [Fuzix OS](http://www.fuzix.org/)

 - [Zephyr Project](https://www.zephyrproject.org/)

 - [Tock](https://www.tockos.org/):
   A secure Operating System for embedded devices, low on memory and low on
   power, written in Rust.

 - [XINU](https://xinu.cs.purdue.edu/)
   Short for _Xinu Is Not Unix_, although it shares concepts and even names with
   UNIX, the design of this OS differs completely.  It is a small, elegant OS
   that supports dynamic process creation, dynamic memory allocation, network
   communication, local and remote file systems, a shell, and device-independent
   I/O functions.

   Xinu is an academic product, coming out of the Purdue University.
   Yet, because of its small size and the rich features, it has some adoption in
   the industry, too.  It is suitable for embedded environments.


## Other

 o [Free Electrons][electrons]:
   Remember to regularly visit this company!  There are tones of tutorials, training courses
   and materials, even job opportunities!  Also, this site [hosts][electron-tools] many different
   toolchains (compilers, libraries, kernels, debuggers) for various platforms.

   I think that "Free Electrons" changed their name due to avoiding legal conflicts with it.

 o [Custom Embedded Linux Distributions](https://www.linuxjournal.com/content/custom-embedded-linux-distributions):
   A useful article in [Linux Journal](https://www.linuxjournal.com/) that
   documents and explains many of the options and the components for an
   embedded Linux distribution.


[elinux]:	http://elinux.org/
[sophia]:	http://sphia.org/
[libphenom]:	http://facebook.github.io/libphenom/
[course]:	https://www.youtube.com/playlist?list=PLPW8O6W-1chwyTzI3BHwBLbGQoPFxPAPM
[barr]:		http://www.barrgroup.com/Embedded-Systems/How-To/RTOS-Selection
[electrons]:	http://free-electrons.com/
[electron-tools]: http://toolchains.free-electrons.com/
[codebender]:	http://blog.codebender.cc/
[linaro]:	https://www.linaro.org/
