Gopher
======

[Gopher] is a rather old protocol, older even than HTTP and the Web.

The protocol is better described in [RFC 1436](https://www.rfc-editor.org/rfc/rfc1436.html).


Resoures
--------

### References ###

 - [The Web May Have Won, but Gopher Tunnels On](https://arstechnica.com/tech-policy/2009/11/the-web-may-have-won-but-gopher-tunnels-on/):
   An interesting article from _Ars Technica_, with some resources.


Servers
-------

A [Gopher] server is a rather simple software.  Until now I have found a few of
them, but I intent to write another [Gopher] server, probably in a low-level
language, such as [Rust], [Go], or [C++].

 - [pygopherd](https://github.com/jgoerzen/pygopherd):
   A modern implementation of a [Gopher] server.  Unfortunately, it's written
   in Python 2.  Maybe I can upgrade it into Python 3.


Clients
-------

[Firefox] used to support [Gopher], but they dropped support for the protocol.
Still, some external plug-ins can bring back to [Firefox] the missing protocol
support.

Other clients are mainly text-based browsers:

 - `lynx`
 - `elinks`
 - [VF-1] command-line [Gopher] client
 - [Castor] browser for [Gemini], [Gopher], and [Finger]


[Gopher]:	https://en.wikipedia.org/wiki/Gopher_(protocol)
[Gemini]:	https://gemini.circumlunar.space/
[Finger]:	https://en.wikipedia.org/wiki/Finger_protocol
[Rust]:		https://www.rust-lang.org/
[Go]:		https://golang.org/
[C++]:		https://en.cppreference.com/w/cpp

[Firefox]:	https://www.mozilla.org/en-US/firefox/
[VF-1]:		https://github.com/solderpunk/VF-1
[Castor]:	https://sr.ht/julienxx/Castor/
