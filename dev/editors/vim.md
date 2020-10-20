Vim
===

### Colorschemes

<http://ivy.galaxy.my/2015/04/17/some-great-modern-vim-colorschemes/>


### Misc

A nice [link][1] that might help me fix the issues I have with unreadable text in tmux/screen
because of the background color.

Some [resources][2] about Vim:


[1]:	http://vi.stackexchange.com/questions/2010/colorschemes-background-not-correct-in-terminal
[2]:	https://vim.zeef.com/patrick.schanen


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

Also, have a look at the article: [Install Vim 8.0 on Ubuntu][3]:

[3]:	http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/


### Vim Native Package Manager ###

Vim 8 has an included Package Manager that works like this:

 - Any directories found inside the `~/.vim/pack/$name/start` will be included
   upon startup.  The `$name` can be anything, usually people name it `vendor`,
   but it could be `colorscheme`, `syntax`, or anything else.

 - If plugins are found at ~/.vim/pack/$name/opt`, they can be loaded only
   during runtime, with the command:

    :packadd plugin-name
