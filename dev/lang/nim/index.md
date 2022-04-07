Nim
===

A multi-paradigm, statically compiled language, which resembles Python, Rust,
and Pascal.

Previously named _Nimrod_, renamed just before the release of v1.0.


Resources
---------

 - [Official site](https://nim-lang.org/)
 - [Official Documentation](https://nim-lang.org/documentation.html)


Installation
------------

_Nim_ can be found in Debian repositories, but it's usually a rather old
version.  I managed to find an earlier, not that old, version in the backports
repository.  So, always check existing versions before installing using _APT_:

    apt-cache policy nim nim-doc

The official site distributes official packages for Unix systems, which include
documentation, tools, tests, and much other stuff.  Maybe I should install them
somewhere and create manual links to the `/bin` directory.

For the moment, I extracted the latest distribution in `~/.local/nim-1.6.2` and
created a symlink with the name `~/.local/nim`.  But, if I want to use these
version, I should add these paths manually to `$PATH`:

    - `~/.local/nim/bin`
    - `~/.local/nimble/bin` (suggested by the official guide)

In the same spirit as with _Rust_, there is an equivalent version manager for
_Nim_, called `choosenim` and is similar to `rustup`.  I can use this installer
to install any version I need locally, on my home path.
