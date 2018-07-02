Vim
===

## Conditional Settings

In another great article at [Arabesque](http://blog.sanctum.geek.nz/gracefully-degrading-vimrc/)
the author shows how one can maintain multiple different hosts, with different versions of vim,
using a single `.vimrc` (and, of course, having it under version control system).

## Vim 8 Support

There is a backport PPA for older Ubuntu and Mint versions, namely the
[Jonahthon F](https://launchpad.net/~jonathonf/+archive/ubuntu/vim).
Here how I can install it on older Ubuntu systems:

```shell
   sudo add-apt-repository ppa:jonathonf/vim
   sudo apt-get update
   sudo apt-get upgrade
```
