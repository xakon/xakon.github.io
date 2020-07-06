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

In the [SSH Emergency Access](https://smallstep.com/blog/ssh-emergency-access/)
article, a solution is presented to use certificates to access SSH servers in
case of emergency.  The solution is based on recent OpenSSH 8.2 server, which
can use certificates to authorize access.  A private CA certificate is created
and stored in a hardware key (like a YubiKey), and then this one is used to
create further certificates in case of emergencies, that will last only for an
hour.  The private CA certificate is always kept on hardware and is never
present on any other computer.


[ssh-tips]:	http://blogs.perl.org/users/smylers/2011/08/ssh-productivity-tips.html
[lj-article]:	https://www.linuxjournal.com/content/rapid-secure-patching-tools-and-methods


SSH Agent
---------

The `ssh-agent` runs in the background and keeps the private keys in memory
unencrypted, but still protected.  It is used to only sign a few packets from
the SSH sever and authenticate the user.  After that, a separate pair of keys is
used for connecting to the SSH server.

Usually, the SSH Agent uses a separate channel with each SSH connection.
It works with the SSH client on top of a UNIX domain socket, which can be found
with the `$SSH_AUTH_SOCK` variable.

The most popular usage of the SSH Agent is to enter only once the passphrase of
a key and for SSH forwarding the keys.

A great article that better explains the SSH Agent can be found
[here](https://smallstep.com/blog/ssh-agent-explained/).


SSH and Windows
---------------

Unfortunately, we do have to work on Windows occasionally.  Some nice clients:

 - [PuTTY][putty]:  Classical.  Also used for accessing the Cygwin system.
 - [KiTTY](http://www.9bis.net/kitty/):
   An enhancement over [PuTTY][putty]


[putty]:	http://www.putty.org/


SSH Protocol
------------

The protocol is normally described in [RFC 4253][rfc4253].
But, certainly there should be plenty more RFCs about the protocol and its
applications.

The SSH Agent Protocol is described in
[here](https://tools.ietf.org/html/draft-miller-ssh-agent-04).
It is very simple.


[rfc4253]:	https://tools.ietf.org/html/rfc4253
