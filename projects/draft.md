Projects
========

 - [Corkami](https://code.google.com/p/corkami/):
   Plenty of useful stuff!

 - [Craft](http://www.michaelfogleman.com/craft/):
   A simple Minecraft clone written in C using modern OpenGL (shaders).
   [Code at Github](https://github.com/fogleman/Craft)


Some Ideas...
-------------

Here will become a sketchpad about some ideas I have with future projects.

 - Git Walk:
   Some examples of using the `git walk`, a small script that will guide a
   reader through a series of commits, by checking out commits in the opposite
   order of stored in history.

   Some examples::
    $ git walk --start [COMMIT]
    $ git walk --continue
    $ git walk --reset
    $ git walk --abort

   Some notes:
      * git log --children
      * git-imerge is a nice example of development style

 - Enrich gmail-notify: check if I can run it from cmdline.

 - CLI Pomodoro timer.  A nice example (in Ruby) is:
   [Thyme](https://github.com/hughbien/thyme).

 - CLI Time Tracking Tool.  A nice example (in Node.js) is:
   [Moro](https://github.com/albacoretuna/moro).

 - Enrich Doxygen:
   Make [Doxygen](http://doxygen.org/) use the notation `//<` for backward doc-comments.

 - Inspired by [pudb](https://pypi.python.org/pypi/pudb), I would like to replicate it
   for [gdb](https://www.gnu.org/software/gdb/).

 - tetris from bsdgames: add color support, add stages.

 - Mail Server Report:  After reading a nice tutorial about
   [sending mail from the command-line][linux-mail-article],
   I remembered the fact that FreeBSD collects statistics about the host and
   sends daily some reports.  Why not implementing something like this in
   Linux, too?

   So, a cron(1) job should collect all data and print these statistics in a
   temporary file, then it's pretty easy to send them via email::
     mail -s 'Server Usage Statistics' root@localhost < /tmp/tempfile.txt

   Some statistics might be:
    * disk usage
    * CPU usage per user

[linux-mail-article]:	http://www.binarytides.com/linux-mail-command-examples/

 - owncloud:  I definitely need to replace Dropbox in order to have almost
   unlimited space to share between my devices.  The solution I come to prefer
   for this problem the [BitTorrent](http://bittorrent.com/) application,
   which has clients for many platforms (Linux, FreeBSD, Mac OS X, Windows,
   Android, iOS).

   Another option is also [Unison](http://www.cis.upenn.edu/~bcpierce/unison/),
   an open-source file synchronization tool that natively supports
   bi-directional file synchronization. Unison is available on multiple
   platforms including Linux, FreeBSD, Windows and Mac OS X. In Linux, Unison is
   available as a command-line tool as well as a GUI program with GTK+ interface.

   Some useful links:
    * http://linuxaria.com/recensioni/bittorrent-sync-automatically-sync-files-on-your-linux
    * http://labs.bittorrent.com/experiments/sync/get-started.html
    * http://www.webupd8.org/2013/04/bittorrent-sync-secure-file-sync.html
