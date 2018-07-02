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
