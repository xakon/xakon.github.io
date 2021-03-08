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

 o [Open On-Chip Debugger (openocd)](http://openocd.org/):
   Free and Open On-Chip Debugging, In-System Programming and Boundary-Scan Testing.
   Recommended as a must-have tool for modern debugging on on-chip software.


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

 o [Embedded Systems Security and TrustZone](https://embeddedsecurity.io/):
   A free, online book on security for embedded systems.


## Videos

 o [Embedded Systems Programming Course][course]:
   A very nice introduction to embedded programming using ANSI C and with practical examples
   on a real board.  I need to get this board and start playing around!


## RTOS

An embedded device needs specialized and often tiny OSes, both in disk size, but
also in RAM requirements.  Linux is an option, but it is rather large for this
purpose.  Some alternatives are:

 - [Contiki](http://www.contiki-os.org/)

 - [VxWorks](https://www.windriver.com/products/vxworks):
   Proprietary RTOS, providing almost everything a developer might need.
   It is POSIX-certified.

 - [BlackBerry QNX](https://blackberry.qnx.com/):
   Commerciaal UNIX-like RTOS, providing almost everything a developer might need,
   even a desktop environment.
   It is POSIX-certified.

 - [FreeRTOS](http://www.freertos.org/):
   A very lightweight RTOS, that provides essentially only a scheduler and
   multi-threading primitives.

 - [ChibiOS/RT](http://www.chibios.org/):
   Compact and fast RTOS, runs on many MCUs.

 - [Mbed OS](http://www.mbed.com/en/platform/mbed-os/)

 - [ThreadX](http://rtos.com/products/threadx/)

 - [Apache NuttX RTOS](http://www.nuttx.org/):
   It seems that the official page of the system is at
   [Apache](http://nuttx.apache.org/) anymore.
   It is POSIX-compatible.

 - [RIOT OS](http://riot-os.org/)

 - [Fuzix OS](http://www.fuzix.org/)

 - [RT-Thread](https://github.com/RT-Thread/rt-thread):
   A small RTOS, written in C, easy to understand, port, and extend.

 - [Zephyr Project](https://www.zephyrproject.org/):
   An RTOS under the Linux Foundation organization, mostly open-source using
   Apache 2.0 license, it aims many different processors, but especially low-end
   models, without the requirement of an MMU.  It comes with a complete
   toolchain, support for many architectures, `Kconfig`, and many other nice
   things.

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
