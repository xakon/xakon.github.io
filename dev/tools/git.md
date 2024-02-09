Source Control Management
=========================

This page is mainly for notes about Git.  But, during the course of the writing
I might include some notes about other SCM systems, too.

Git
---

[Git](http://git-scm.com/) is my favourite SCM system.  It is powerful, but it
becomes a bit difficult to use its advance features, since their number is
enormous!  That's the reason I need to take a lot of notes about it.

### Latest Version

If you use a Debian-based distribution, Git is not updated so often.
But the *Ubuntu Git Maintainer Team* has a `PPA` for Git with the latest
version available.  It can be found by typing as `root`:

```shell
   $ add-apt-repository ppa:git-core/ppa
   $ apt-get update
```

Having the latest as possible Git version is highly recommended!

### Push

I can't understand why I have so many problems with the `push` action of Git.
On the ideal situation, a branch should be already setup to track and push
changes to a remote branch automatically.  I haven't found this solution yet,
so I note the command that will push the changes from current branch to a
remote, completely different, branch.

I use this action very often when adding my forked repository on Github of a
project, perform some changes and need to upload these changes to my Github
repository, instead of the `origin` remote.

    $ git push xakon HEAD:master

Be careful, thought, since the command `git push xakon HEAD` uploads changes
on the remote, but also creates, if it doesn't exit, the remote branch.

### Stage

Again on [Arabesque](http://blog.sanctum.geek.nz/committing-part-of-a-file/)
I've found the trick of avoiding the `git add -i` workflow, which is a bit slow
on staging changes on a single file.  The answer to it is `git add --patch`
command.  Furthermore, `--patch` argument can be added to many other git
commands to work with the staging area.

### Merge

Even that Git's branching/merging model is awesome, the conflict resolution
after a merge/rebase action is, perhaps, the most tedious process in all SCM
systems and in development in general.

I've read a great article about conflict resolution, where the author suggests
the correct way to perform it (not only in Git, although he uses this system
for demo).  Although the author makes me very confident that the next time I'll
have a conflict I'll resolve it quickly and easily, yet I'm anxious about
happening such thing!  Yet, I note here the article URL for future reference.
I may take some notes extracted from it someday.

 - [Painless Merge Conflict Resolution](http://blog.wuwon.id.au/2010/09/painless-merge-conflict-resolution-in.html)

### Server

Setting up and managing a Git server is just a challenge, since Git wasn't designed for such usage.
Instead, there are a couple of tools that help us setup easily a Git server with access control lists
enabled.

 - Gitosis:
   A python-based tool, that lets a user create a server and let other users access through this
   account the shared repositories, using their public shared keys.

 - [Gitolite](https://github.com/sitaramc/gitolite/):
   A newer solution to Gitosis, solves some problems existing in the latter.
   This is the modern and suggested solution for a Git server.

 - [Gitto](https://github.com/bhuztez/gitto):
   Easily deploy your own Git server.

 - [Gogs](https://gogs.io/)

 - [Gitea](https://gitea.io/):
   A Painless self-hosted Git service.

   A fork of [Gogs](https://gogs.io/), since the latter project doesn't update
   very often lately.

 - [Forgejo](https://forgejo.org/):
   A self-hosted lightweight software forge.
   Easy to install and low maintenance, it just does the job.
   A fork of [Gitea](https://gitea.io/).


### Github Alternatives

[Github](http://github.com) is a really popular code-hosting platform,
but shouldn't be the only option for this purpose.  At the article
[Goodbye, Sourceforge](http://helb.github.io/goodbye-sourceforge/)
I can always find a list of alternative services.

 - [Bitbucket](https://bitbucket.org/)

 - [Gitlab](https://gitlab.com/)


### Useful Configuration ###

#### PGP signatures ####

    [user]
    signingkey   = DEADBEAF

We also need to configure the `gpg-agent` to use the terminal or the console in
order to ask for the PGP passphrase.  Add the following in the
`~/.gnupg/gpg-agent.conf`:

    use-standard-socket
    write-env-file ~/.gnupg/gpg-agent-info
    pinentry-program /usr/bin/pinentry-tty

Other nice options are `pinentry-curses` or even `pinentry-gnome3` or
`pinentry-x11` for graphical interfaces.

#### Ignore commits from `git blame` ####

Ignore some commits from the `git blame` command.  Paste the SHAs of the commits
in a text file, then add the following configuration:

    [blame]
    ignoreRevsFile = path/file

Useful when we have a large patch with decorative changes, like changing the
style of some files.

#### Submodules ####

While working on a repository with _submodules_, it helps to run some commands
recursively.  Add the following configuration to propagate some commands to
_submodules_:

    [submodule]
    recurse = true


### References

In case I need it: [Fixing Git Commits](http://sethrobertson.github.io/GitFixUm/).

Subversion
----------

Here is a quick tip I've found at Internet (I can't recall the source) where it
bypasses Subversion's shortcomings and emulates Git's stage area.  Perhaps, on
newer versions of subversion this behavior may be present in the tool and this
technique would be obsolete by then.  This tip can be found on my blog, too

This tip is applicable when we have many changes on our working directory but
need to commit only a subset of them.

    $ svn diff | vi - > hunks.diff	# remove unwanted hunks by editing
    $ patch -p0 -R  < hunks.diff
    $ svn ci
    $ patch -p0 < hunks.diff
    $ svn st

For a demo of the above situation and application of the tip, we can refer at
[Arabesque](http://blog.sanctum.geek.nz/committing-part-of-a-file/).

A `svn2changelog` utility to create Changelog files from a subversion
repository:
	http://ch.tudelft.nl/~arthur/svn2cl/
I think it can found on subversion's `contrib` directory, too.
