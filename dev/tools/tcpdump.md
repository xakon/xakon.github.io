tcpdump
=======

This is one of the most powerful tools, which I know the less!
I should master it, if I want to get involved more on Network Programming.

Some useful options are:

 * `-c`		- Capture COUNT packets
 * `-n`		- Avoid name resolving (use only addresses)
 * `-nn`	- Avoid name **and** port resolving


### Filters ###

The real power of the tool comes with the filters.  Some examples are:

    $ tcpdump host x.x.x.x	# filter by IP address
    $ tcpdump -i eth0		# filter by interface
    $ tcpdump src x.x.x.x	# filter by source address
    $ tcpdump dst x.x.x.	# filter by destination address
    $ tcpdump icmp		# filter by protocol
