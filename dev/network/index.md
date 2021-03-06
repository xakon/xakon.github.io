Networks & Network Programming
==============================

Resources
---------

### Books ###


### Tutorials ###

 - [Sockets Tutorial](http://www.cs.rpi.edu/~moorthy/Courses/os98/Pgms/socket.html)
 - [IPSec Overview](https://anardil.net/2015/internet-protocol-security-ipsec.html)
 - [The Illustrated TLS Connection](https://tls.ulfheim.net/)


Notes
-----

### IP Security (IPSec) ###

_IPSec_ is a set of protocols and standards to add security to IP protocols.
Initially for IPv6, it was backported to IPv4.


### IPv6 ###

There are various protocols around IPv6, in order for an IPv6 network to
operate.

Some terms/protocols are:

Neighbor Discovery Protocol (NDP)
:  Host joins IPv6 network and discovers routers and other hosts (RFC-4861)

Stateless Address Auto-Configuration (SLAAC)
: An unconfigured device gets an IPv6 address automatically once it connects to an IPv6 network.

Duplicate Address Detection (DAD)
: The process for a host to determine if a link-local address is unique in IPv6
network.  It is part of the _Neighbor Discovery_ (ND) protocol.

Dynamic Host Configuration Protocol (DHCPv6)
: Assign addresses to hosts from a pool and provide additional configuration information.