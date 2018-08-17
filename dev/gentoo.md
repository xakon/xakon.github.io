Gentoo
======

Some notes, necessary for this new system I'm going to use!


portage
-------

The package manager of Gentoo is called *portage*.  Many different command-line
utilities.  Also, we can find an enormous amount of configuration files.


### Configuration

 - `/etc/portage/make.conf`
   Global settings for `$USE` and `$GENTOO_MIRRORS` and build flags.

 - `/etc/portage/package.use/`
   Per package configuration.  It can reside in a single or multiple files.

### Command-Line Tools

 - `catalyst`:  create a minimal Gentoo system from scratch.
 - `eselect`
 - `eix`
   Similar to apt-cache(1)


 - `emerge`
   * -a, --ask

   * -N, --new
   * -u
