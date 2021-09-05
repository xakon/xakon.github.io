Network Tools
=============

 - `ping`, `ping6`
 - `traceroute`, `traceroute6`
 - `mtr` (better alternative to `traceroute`)
 - `nmap`
 - `netcat` and its successor, `ncat` from the [Nmap project](https://nmap.org/)
 - `iptables`
 - `tcpdump`
 - `tcpfilter`


Resources
---------

 - [Basic Firewall Configuration (iptables]][two-wrongs-iptables]

[two-wrongs-iptables]:	https://two-wrongs.com/basic-firewall-configuration-iptables


Tools
-----

### netcat ###

The Swiss army knife of UNIX networking.

The original tool was written on UNIX, but it's long been abandoned.
On Debian, it is found as the `netcat-traditional` package.
`GNU netcat` is a rewrite of the traditional tool, but also doesn't have a lot
of development lately.

The package that is the most powerful is the `OpenBSD netcat`, but it lacks the
`-e` switch, as it is considered a security hole.  On Debian, this is the
`netcat-openbsd` package.

Also, from the `nmap` team, we have the `ncat` tool, with the missing `-e`
switch, but no port scanning, as this is covered by `nmap` itself.

A nice introduction about the tool can be found in the article:
[Netcat](https://blog.ikuamike.io/posts/2021/netcat/).
