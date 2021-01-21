Raspberry Pi
============

Projects
--------

 - [Build GCC as cross-compiler for Raspberry Pi][rasp-gcc]
   Working on a Raspberry Pi will need a decent compiler.
   Even though that Raspbian comes with GCC 6, we can build a cross-compiler on
   Linux for ARM Linux and have GCC 8 and build programs on a fast, Linux host,
   instead of the slow Raspberry Pi!
 - [Raspberry Cluster][cluster]:
   There are many videos introducing a cluster or mini-computer using many Pis in
   parallel.  On this blog I can also find step-by-step instructions on how one
   can build his own cluster using mainly Raspberry Pis.
 - [Plan9 on Pi][plan9]:
   Demo of how to run Plan9 on a Raspberry Pi.
 - [Raspberry Pi on QEMU](https://azeria-labs.com/emulate-raspberry-pi-with-qemu/)
 - [Some Qemu images to play with](https://blahcat.github.io/2017/06/25/qemu-images-to-play-with/)
 - [Physical Computing with Python](https://projects.raspberrypi.org/en/projects/physical-computing):
   Published under a Creative Commons license, it is a publication of "The Raspberry Pi Foundation".
   It is a great guide which introduces physical computing.  The guide uses [GPIOZero][gpiozero]
   and teaches how to interface with electronic components.
 - [GPIOZero][gpiozero]
 - [rust_gpiozero](https://crates.io/crates/rust_gpiozero):
   A Rust port of [GPIOZero][gpiozero].  Also, the same author has adapted the Python guide to
   physical computing into [Rust](https://rahul-thakoor.github.io/physical-computing-rust/).


[cluster]:	http://likemagicappears.com/projects/raspberry-pi-cluster/
[plan9]:	http://bendyworks.com/geekville/lab_projects/2012/11/getting-plan-9-running-on-the-raspberry-pi
[rasp-gcc]:	https://solarianprogrammer.com/2018/05/06/building-gcc-cross-compiler-raspberry-pi/
[gpiozero]:	https://gpiozero.readthedocs.io/
