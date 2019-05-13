Configuration
-------------

   ``make config``:
      Don't use it!  It is CLI-driven but it asks a LOT of questions.
      Only for masochists.

   ``make ncofnig``:
      A relatively new option that enhances ``menuconfig`` using a ncurses
      interface.

   ``make menuconfig``:
      Create an initial configuration setup using a Curses interface.
      Capable of touching only options interested about using a text-based menu
      interface.

      Every developer uses this option!

   ``make oldconfig``:
      Use this option in order to just "update" configuration during
      development.  Kconfig will only ask for missing configuration options.

   ``make xconfig``:
   ``make gconfig``:
      Like "menuconfig" but the use graphical libraries (Qt4 and GTK+
      respectively).

   Kconfig's output is the file ``.config`` in the top-level directory
   containing all the configuration options.  Furthermore, it creates the
   ``autoconf.h`` file at the ``include/linux`` sub-directory.  This file
   "exports" all the configuration symbols to GCC for accessing them in C code.

More information and examples can be found at the
[KernelNewbies](http://kernelnewbies.org/KernelBuild) wiki.


Build
-----

An interesting tip found at [Death by Tape][deathbytape-article], suggests to
use a RAMdisk to configure and build a kernel.  The advantage of having not
keeping a permanent configuration or build environment can be outpaced by the
speedup in compilation.  Useful trick, if we are interested in build a Kernel
only once.

    sudo mkdir /mnt/ramdisk	# /dev/shm is usually too small for such task
    sudo mount -t tmpfs -o size=3072M tmpfs /mnt/ramdisk
    cp -R linux /mnt/ramdisk

    make defconfig

    make -j4 build
    make modules_install install

In general, there are some other great tips and advices in the above article,
regarding to configuring, building, and debugging the Kernel under QEMU.

[deathbytape-article]	http://deathbytape.com/articles/2015/02/17/build-debug-linux-kernel.html
