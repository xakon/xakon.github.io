Debian
======

I would like to become a [Debian][debian] developer/maintainer.

Some resources:

 - [How You Can Join](http://www.debian.org/devel/join/)
 - [Debian Developer](http://wiki.debian.org/DebianDeveloper/)
 - [Debian Manual Pages](https://manpages.debian.org/):
   Not Debian specific, as some pages are common to other distributions or OSes.
   There are also different supported versions of the pages!
 - [The Debian Administrator's Handbook][admin-book]


[debian]:		https://www.debian.org/
[admin-book]:		https://debian-handbook.info/


Tools
-----

[Debian][debian] comes with plenty of tools for building and maintaining
Debian packages (`.deb`).  I would like to keep a list of them.
Many of them can be found in the `devscripts` Debian package.

 - `dpkg`:		Of course, the default package manager of a Debian system
 - `dpkg-buildpackage`:	Wrapper around all the Debian build tools
 - `dpkg-build`:	Create Debian packages from installed sources
 - `debuild`:		Another tool to build a Debian package
 - `dch`:		Automatically add entries to debian/changelog files
 - `sbuild`:		Build Debian packages inside of clean chroots
 - `schroot`:		chroot-management tool

 - `dget`:		Fetch only the `.deb` files from Debian repository
 - `dput`:		Upload a `.deb` package in a Debian repository
 - `dh_make`:		Create a _source package_ from upstream

 - `debootstrap`:	Create a minimal Debian system

On Ubuntu, there is also [multipass](https://multipass.run/), which can be used
to easily spin up Ubuntu VM instances.  Maybe it supports Debian images, too.


Packages
--------

 - [Debian Wiki: Building Tutorial](https://wiki.debian.org/BuildingTutorial).
 - [How to create a Debian `.deb` package][create-deb]:
   A nice introductory recipe for building `.deb` files, but I have already
   found more resources under the `Tools`.
 - [Debian Packaging for the Modern Developer][dpkg-build];
   Another useful description of how Debian packaging works under-the-hood.
   A nice accompany for the previous article.
 - [Packaging Python Project to Debian](https://medium.com/@pycoder_boy/packaging-python-project-to-debian-deb-part-1-f01f510d7d10)


[create-deb]:	https://blog.serverdensity.com/how-to-create-a-debian-deb-package/
[dpkg-build]:	https://github.com/phusion/debian-packaging-for-the-modern-developer/tree/master/tutorial-2


Locale
------

We can inspect current _locale_ and all available _locales_ with the following
commands:

    locale
    locale -a

The _locale_ on a Debian system is being set with the following commands:

    locale-gen en_US.UTF-8
    dpkg-reconfigure locales
    update-locale LANG=el_GR.UTF-8	# auto setup of /etc/default/locale

See also the files:

    /usr/share/i18n/SUPPORTED
    /etc/default/locale
    /etc/environment

More info, as always, at [ArchLinux Wiki](https://wiki.archlinux.org/index.php/locale).


Wiki
----

Some interesting pages from the [Debian Wiki](https://wiki.debian.org/).

 - [Why the Name](https://wiki.debian.org/WhyTheName):
   An IT-etymology/linuxguistics page for people wondering "how come the package
   yasysmand-cling has such a strange name?"
