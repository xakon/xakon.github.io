Vim
===

Resources
---------

 - [Home Site](https://www.vim.org/)
 - [Vim help files](https://vimhelp.org/) (in HTML)
 - [Vim User Manual](http://www.eandem.co.uk/mrw/vim/usr_doc/):
   In PDF formats with different styles.
 - [Vim Cheat Sheet](https://vim.rtorr.com/)
 - [The Vim Book](http://www.truth.sk/vim/vimbook-OPL.pdf)
 - [Vim Coobook](http://www.oualline.com/vim-cook.html) by Steve Qualline
 - [Vim FAQ](http://vimdoc.sourceforge.net/htmldoc/vimfaq.html)
 - [Vim Recipes](https://www.ossblog.org/wp-content/uploads/2017/06/vim-recipes.pdf)
   A free Vim cookbook with scores of recipes for everyday Vim usage.
 - [Google Vimscript Style Guide](https://google.github.io/styleguide/vimscriptguide.xml)


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


### Vim Directory Structure ###

The following are some notes from Drew Neil.

```
plugin
    naming convention: name_of_plugin.vim
    these files are sourced for all file types

doc
    naming convention: name_of_plugin.vim
    these files document the functionality of a plugin

color
    naming convention: name_of_colorscheme.vim
    these files define a colorscheme for syntax highlighting

syntax
    naming convention: filetype.vim
    these files define the operators, keywords and constructs of a language
    the syntax groups defined here are used by the colorscheme
    (much like HTML elements, ids and classes provide hooks for CSS styling)

indent
    naming convention: filetype.vim
    these files define the `indentexpr` for a language
    the `indentexpr` is used by the `=`, `o` and `O` commands

ftplugin
    naming convention: filetype.vim
    these files are sourced only for the specified filetype
    suitable for defining functionality for one particular language
    e.g. a command to build an HTML document from a markdown source

autoload
    naming convention: ???.vim
    Vim provides a mechanism to ensure that startup time isn't compromised
    when large scripts are loaded. Functions, commands and mappings defined
    in the autoload directory are defined with an empty implementation on
    startup. It is only when these commands are invoked by the user that the
    script is sourced in full, and each command is attached to its
    implementation.
    :help autoload-functions
    :help 41.14
```
