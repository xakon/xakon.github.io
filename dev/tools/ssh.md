SSH and OpenSSH
===============

SSH is the protocol that we use so much everyday without even realizing so.
OpenBSD's implementation of OpenSSH is the most common implementation.


SSH Proxy
---------

I used this technique a lot while I was working at LeaseWeb, but I haven't
documented it.  Unfortunately, I need this configuration quite often, but
I have to always lookup for some information.  The following setup comes
from [Mattias Geniar][ma.ttias].

In general, use the `ProxyCommand` in SSH configuration:

    Host target
       ProxyCommand	ssh -q -W %h:%p jumphost


[ma.ttias]:	https://ma.ttias.be/use-jumphost-ssh-client-configurations/


SSH Tunneling
-------------

*SSH tunneling* is a bit of magic for me.  Below some examples follow in order
to quickly find out ssh's syntax and have a reference on their usage.

    $ ssh -R 8080:mywebserver:80 host2		# Remote port forwarding
    $ ssh -g -L 8080:example.com:80 host2	# Local port forwarding
    $ ssh -D 8080 username@host			# SSH tunnel as SOCKS proxy


SSH Tricks and Tips
-------------------

A very nice article with useful SSH tricks is the [SSH Productivity Tips][ssh-tips].
Most of them are well-known, but it is nice to keep a reference to this article
for reminding the options we have and some tricks that I can hardly remember.

Also, the article [Rapid, Secure Patching: Tools and Methods][lj-article] holds
a large number of useful OpenSSH tips on setup and uses, some of them really
advanced.  Keep a note of it and always revisit it!


[ssh-tips]:	http://blogs.perl.org/users/smylers/2011/08/ssh-productivity-tips.html
[lj-article]:	https://www.linuxjournal.com/content/rapid-secure-patching-tools-and-methods


SSH and Windows
===============

Unfortunately, we do have to work on Windows occassionally.  Some nice clients:

 - [PuTTY][putty]:  Classical.  Also used for accessing the Cygwin system.
 - [KiTTY](http://www.9bis.net/kitty/):
   An enhancement over [PuTTY][putty]


[putty]:	http://www.putty.org/
