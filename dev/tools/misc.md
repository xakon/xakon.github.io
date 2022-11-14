Tools
=====

Of course, we use every day compilers, interpreters, editors, debuggers,
profilers and other tools to perform our job.  But, there is also another
category of tools that relate to development indirectly.  Here are some notes
about such stuff.

[Web Developer Tools](https://www.browserling.com/tools).

[Linux Performance Tools](http://brendangregg.com/linuxperf.html).

Pomodoro Timers
---------------

I found the [Pomohoro][https://github.com/kqr/Pomohoro] tool (built in Haskell)
to implement a Pomodoro timer, but also keep statistics in
[hledger timeclock](http://hledger.org/timeclock.html) format.
More on this at [hledger.org](http://hledger.org/) home, which I also need to check.

Task Managers
-------------

 - [Taskwarrior](https://taskwarrior.org/):
   A CLI task manager, with interface that resembles `elm`.

 - [Geek Life](https://github.com/ajaxray/geek-life):
   A TUI task manager, written in Go, using mouse and nice keyboard shortcuts.

Time Tracking
-------------

 - [Timewarrior](https://timewarrior.net/):
   Time manager with interface similar to [Taskwarrior](https://taskwarrior.org/).

 - [Harvest](http://harvestapp.com/): A tool to track down time spent and
   earning money.

 - [Timelog Tracker](http://mg.pov.lt/gtimelog/):
   A small GTK+ time tracking application.
   Its main goal is to be as unintrusive as possible.

Mail Utilities
--------------

- sSMTP: Of course, I can use all the local utilities to write and send emails
  (like mutt, elm, mail, mailx, Mail, etc.), but all these need from me to
  setup an email server at my host.  Another solution is to use the sSMTP, which
  acts like mail(1) but sends the emails through an SMTP service (like GMail or
  Yahoo!Mail).

- [MailSluprper](https://mailslurper.com/):
  A nice development SMTP server, to test application that send emails without
  bothering any user.

- [Inbucket](https://github.com/inbucket/inbucket):
  An email testing service, that accepts messages for any email address and make
  them available via HTTP, REST, and POP3 interfaces.  Built using Go, has no
  other external dependencies.

- Python `smtp` module:
  Python's Standard Library ships with a small SMTP server for debugging mail
  utilities.

- [MailCatcher](https://mailcatcher.me/):
  Super-simple SMTP server, which can be executed from a container or natively.
  It requires no installation or signup, it stores no emails and can be used to
  debug locally email services.

- [Mailtrap](https://mailtrap.io/):
  Fake mail server, used for development.  No need for setup, but registration
  is needed.

- [MailSlurp](https://www.mailslurp.com/):
  Another test mail service, that needs registration, but no setup.

- [MailGun](https://www.mailgun.com/):
  Professional email service for developers.

- [ManDrill](https://mandrill.com/):
  Transactional Email for Mailchimp.

DNS Server
----------

 - dnsmasq: A lightweight DHCP and caching DNS server.

 - [NSD](http://www.nlnetlabs.nl/projects/nsd/):
   Name Server Daemon is an authoritative only, high performance, simple and
   open source name server.  It does not do DNS forwarding, it only serves its
   own domains. But this could be enough for your project.

 - [dhcp.io](http://http//dhcp.io/):
   Alternative to DynDNS, now that the latter is not free anymore.

Calendar Server
---------------

 - [Radicale](http://radicale.org/):
   A simple Calendar (CalDAV) and Contact (CardDAV) server.

OpenSSL
-------

More information at a separate [page][tools/openssl.html].

Easily configure a Web server using this [tool](https://cipherli.st/).

SSH
---

More info at this [page][tools/ssh.html].

RDP Clients
-----------

RDP is Microsoft's protocol to access remotely a Windows server.
Some available Linux RDP clients are: rdesktop, Tsclient, Remmina, PAC.

File Managers
-------------

 - [Gentoo File Manager](http://obsession.se/gentoo/)
 - [Xfe](http://roland65.free.fr/xfe/)
 - [Midnight Commander](https://midnight-commander.org/)

DjVu
----

An excellent format for compressing digitized books.  Developed 20 years ago
from AT&T, it is supported by Evince.  More information can be found online
at [DjVu.org](http://djvu.org/).

Some tools to create/manipulate DjVu documents can be:

 - `djvm`
 - `convert` from Imagemagick to convert JPEG images to PBM or PNM.
 - `cjb2` and `c44` to create single-page DjVu files

A nice companion to `.djvu` files is the _tessaract_, an OCR software to attempt
to read text from an image and print it on STDOUT.  It can be used to add the
text layer of `.djvu` file.

Misc
----

 - [Boinc](https://boinc.berkeley.edu/):
   Open-source software for volunteer computing.  Also the
   [Debian Wiki page](https://wiki.debian.org/BOINC) might be interesting.

 - [Minibox](https://github.com/ercanersoy/Minibox):
   Small Unix commands for resource limited systems.
   We can build them even for MS-DOS, [FreeDOS](http://freedos.org/), etc.
