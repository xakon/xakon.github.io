Build Tools
===========

I struggle a lot lately with [Haskell][haskell] build tools.
There is no standard way to build a Haskell project, but there are many
alternatives.  To try to shade a bit this ecosystem, and inspired by the
[this article][kowainik], I will document a few things about Haskell build
systems and available options and terms.

Also, the article [Setting Up Haskeel Development Environment][toolchain-article]
has an extensive description about what an _Haskell Toolchain_ is, which tools
are included, how to install and configure it, and some potentials and
misleading mistakes in official documentation.

[toolchain-article]:	https://schooloffp.co/2020/07/25/setting-up-haskell-development-environment-the-basics.html


Cabal
-----

 - [Home page](https://www.haskell.org/cabal/)
 - [User guide](https://www.haskell.org/cabal/users-guide/)

_Cabal_ is an overloaded term and can mean different things:

 - Format of `.cabal` files:
   Configuration and description of a package.
 - [cabal][cabal-lib] Haskell library:
   Library to parse the `.cabal` file format.
 - `cabal-install`:
   The build tool for Haskell projects.

On Debian-based systems, the latest versions of GHC and _Cabal_ can be installed
through the _hvr/ghc_ PPA:

    sudo add-apt-repository ppa:hvr/ghc
    sudo apt update
    sudo apt install ghc-8.6.3 cabal-install-head

On Debian, there is already a decent update version of both GHC and _Cabal_.

### Workflows ###

 - Create a project:		`cabal init`
 - Update Hackage:		`cabal new-update`
 - Build project:		`cabal new-build`
 - Run project:			`cabal new-exec`
 - Dependencies specified inside the `.cabal` file, in `build-depends` field.
 - Run GHCi in project:		`cabal new-repl`

_Cabal_ can support many executables, to run them, test them, install them.
Each one can be added as an optional parameter to each relevant command.

**NOTE**:
There are also _Cabal_ commands `build` and `update`, but these are actually the
old interface of the program and we shouldn't use them.  See also the following
article for more information:
   <TODO>

### Terms ###

Top-level fields like `library`, `executable` and others in `.cabal` file are
often called _stanzas_ in the _Cabal_ format specification.


Stack
-----

 - [User guide](https://docs.haskellstack.org/)

_Stack_ builds on top of _Cabal_ to enable reproducible builds, regardless of
GHC version.  It still uses _Cabal_, but it greatly expands it.

Its configuration is found in `stack.yaml`.  The main and most important option
is the `resolver`.  The rest are optional.

The dependencies are handled automatically by `hpack` and `package.yaml`, which
are then translated into the `.cabal` file.  So, we need to maintain only the
`package.yaml`.

Adding dependencies that are compatible and can be found in project's _resolver_
is being done by adding a reference to the `build-depends` field.
If the dependency is not found in the _resolver_, then we need to add it in
`extra-deps` field.

### Workflows ###

 - Create a project:		`stack new`
 - Run GHCi:			`stack repl` or `stack ghci`
 - Build project:		`stack build`
 - Run project:			`stack run`

Unlike _Cabal_, _Stack_ creates a project according to a default template.
We can find more templates at:
   <lhttps://github.com/commercialhaskell/stack-templates>

_Stack_ also supports multiple executables, just like _Cabal_.
Actually, it uses under-the-scene _Cabal_ to build the project.
The main difference with _Cabal_ is the notion of the _LTS resolver_, a Hackage
snapshot with working packages.

### Terms ###

The _LTS resolver_ or simply _resolver_ is a snapshot of Hackage, where the
packages have been verified to work together without problems.  We can find
available resolvers here and which versions belong to each resolver:

 - <https://www.stackage.org/>
 - <https://www.stackage.org/lts-13.2>


Hpack
-----

_Hpack_ is an alternative to _Cabal_ package format.  Instead of using the
`.cabal` file format to specify the dependencies, it uses the `package.yaml`.

Advantages of _Hpack_ over _Cabal_:

 - _Cabal_ uses custom format, _Hpack_ is plain YAML
 - _Cabal_ has much duplication, if it includes many targets

The _Hpack_ is a separate executable, installable either using _Stack_ or
_Cabal_.


    $ stack install hpack
    $ cabal install hpack

_Hpack_ will generate a `.cabal` file out of its `package.yaml`.
Thus, we don't need to commit the `.cabal` file in the repository.

The structure of the `package.yaml` is quite similar to `.cabal`:

```yaml
name: HaskellPackage
version: 0.1.0.0
github: some_account/project
license: MIT
author: "John West"
maintainer: "john.west@example.com"
copyright: "Basic Copyright @2020"

extra-source-files:
 - README.md

dependencies:
 - base >= 4.9 && < 4.10

ghc-options:
 - -Wall

library:
 source-dirs: src

executables:
 run-project-A:
   main: Run1.hs
   source-dirs: app
   ghc-options:
    - -threaded
   dependencies:
    - HaskellPackage
 run-project-B:
   main: Run2.hs
   source-dirs: app
   dependencies:
    - HaskellPackage
```

One great advantage of using _Hpack_ is the fact that it will automatically
infer the structure of the individual modules, by scanning the project.
It assumes that everything is exportable, and it will place them under the
`exposed-modules` section in the final `.cabal`.  We can avoid export modules by
placing under the `other-modules` option inside the `library` section.


Nix
---

To be added later.


[haskell]:	https://www.haskell.org
[kowainik]:	https://kowainik.github.io/posts/2018-06-21-haskell-build-tools
[cabal-lib]:	http://hackage.haskell.org/package/Cabal
