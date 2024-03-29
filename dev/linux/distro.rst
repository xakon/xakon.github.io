===================
Linux Distributions
===================

There are plenty and different distributions for Linux.
Here, I will try to categorize and document a few of them.


Summary
=======


TODO:  Add table with each Distro characteristics

Debian		dpkg/apt	.deb	systemd
Ubuntu		dpkg/apt        .deb    systemd
Devuan          dpkg/apt        .deb    sysV init
Gentoo          portage                 systemd
Arch            pacman           .apk   systemd
Alpine
LXDE
Void
Puppy
Quirky
MX Linux	dpkg/apt	.deb


Main Distributions
==================

Void Linux
~~~~~~~~~~

I read very nice things about `Void Linux`_:  it is minimal, has its own package manager,
it resembles FreeBSD, it is rolling release and highly optimized like Arch, it has
`runit` as a lightweight init manager.  It is worth to have a look at it.

.. _Void Linux: https://www.voidlinux.eu


Embbeded Distributions
======================

Some distributions are more suitable for an embedded device, that is powerful enough to run Linux.

Armbian
~~~~~~~

For some ARM-based single-board computers (SBCs) that are powerful enough to
run Linux (like Raspberry PI), the default option would be to use a dedicated
distribution or a generic Debian.  But, the distributions provided by the
provider are not always up-to-date or available at all.  `Armbian`_ comes to fix
this problem.

`Armbian`_ is a set of distributions.  The project supplies many pre-made
images for many boards, but it also gives the tools and the documentation to
build distributions that can support missing boards.  And, it's not only restricted to
ARM-based SBCs, but it added recently support for RISC-V SBCs too.

Currently, we can even choose between 2 generic images, based on Debian or Ubuntu.
It can even run console-based or graphical-based Linux.

We can install it on an SD card, and after the first boot it will expand the root filesystem
to use the whole space on the SD card.

.. _Armbian: https://www.armbian.com/


Tiny Distributions
==================

Alpine Linux
~~~~~~~~~~~~

`Alpine Linux`_ is a very small Linux distribution, very popular in use with
containers.

.. _Alpine Linux: https://alpinelinux.org/


Puppy Linux
~~~~~~~~~~~

`Puppy Linux`_ is a LiveCD, minimal Linux distribution, which brings many
innovations in the field.  I always want to play with it and customize one
similar distribution!

Actually, I was wrong about my previous statement, as this is a common misconception about
`Puppy Linux`_.  It is not a Linux distribution, but a set of distributions, that they share
the same philosophy.  Today, `Puppy Linux`_ recognises 3 different types of distributions:

- Official:    distributions built using *Woof* and maintained by `Puppy Linux`_
- Woof-built:  distributions built with *Woof* that also have additional or modified packages
- Unofficial or _pupplets_:
  Remasters that are privately maintained, usually for specific purposes, instead of
  being on the `Puppy Linux`_ forum.

.. _Puppy Linux: http://www.puppylinux.org/


MX Linux
~~~~~~~~

`MX Linux`_ is a LiveCD, minimal Linux distribution, based on Debian.
It works amazingly well if installed on a USB, external disk, as it supports
persistent storage.  It comes preconfigured only with XFCE.

.. _MX Linux: https://mxlinux.org/


Quirky Linux
~~~~~~~~~~~~

`Quirky Linux`_ is created from the creator of the `Puppy Linux`_, but has
nothing else to do with `Puppy Linux`_:  it is based on Ubuntu, but carries
many innovations.  A great pocket distribution to have available.

.. _Quirky Linux: http://bkhome.org/quirky/


SliTaz Linux
~~~~~~~~~~~~

`SliTaz Linux`_ is not a very large distribution, but it is very powerful and
lightweight.

.. _SliTaz Linux: http://www.slitaz.org/


Porteus
~~~~~~~

`Porteus`_ offers a few desktop options, but it's still very lightweight.

.. _Porteus: http://www.porteus.org/


Bodhi Linux
~~~~~~~~~~~

`Bodhi Linux` is not lightweight but it offers a lot of power and capabilities.
I can install it on a USB disk and carry around it as a rescue or secure system.

.. _Bodhi Linux: https://www.bodhilinux.com/


Tiny Core
~~~~~~~~~

`Tiny Core Linux`_ smallest, tiniest Linux distribution.  Ideal to carry it around in a pocket
installation.

.. _Tiny Core Linux: http://tinycorelinux.net/


Damn Small Linux
~~~~~~~~~~~~~~~~

A very small, tiny Linux, only a few MBs of installation disk.
`Damn Small Linux`_ is suitable to run on old machines or even run from RAM.

.. _Damn Small Linux: http://www.damnsmalllinux.org/


Nanolinux
~~~~~~~~~

`Nanolinux`_ is a tiny Linux distribution.  Quite impressive for its minimal size.

.. _Nanolinux: https://sourceforge.net/projects/nanolinux/
