XMPP
====

The _eXtensible Messaging and Presence Protocol_ (XMPP) is an open, XML-based
networking protocol for real-time communication.  This is the network protocol
behind instant-messaging.  Today, many other applications use XMPP beyond
instant-messaging.

It started with the name _Jabber_, so many references to it is going to be found
around.

Every implementation, either on server or client, needs to at least implement
the XMPP core protocols, described by the relevant RFCs.  On top of the core
protocols, the XMPP Standards Foundation created an ever-growing list of
_XMPP Extension Protocols_ (XEPs).  These specifications describe how to extend
the core protocol for very specific features.


Resources
---------

 - [XMPP.org](https://xmpp.org/)
 - [RFC 3920](https://tools.ietf.org/html/rfc3920)
 - [RFC 3921](https://tools.ietf.org/html/rfc3921)

### Books ###

 - [XMPP - The Definitive Guide](https://www.oreilly.com/library/view/xmpp-the-definitive/9780596157524/)


Details
--------

The XMPP network consists of a series of inter-connected servers with clients
connecting to them.  The job of XMPP is to route small XML "packets" between
these entities on the network.

Every entity on the XMPP network is addressed using a _Jabber ID_ (JID), which
has the form `username@domain/resource`.  A user can be connected to the server
with multiple instances of a client;  the `resource` part of the JID gives a
unique name to every connected instance.  In some cases, the resource part can
be left out

The small XML packets are called _stanzas_ and fall into 3 categories:

 - _message stanzas_
 - _presence stanzas_
 - _info/query stanzas_


<dl>
   <dt> Message stanzas
   <dd> Provide the basic mechanism to get information from one entity to
        another.  These are typically used to send text messages to each other.

   <dt> Presence stanzas
   <dd> "Broadcast" information from one entity to many entities on the network.

   <dt> Info/query (IQ) stanzas
   <dd> Provide the mechanism for request/response interactions between
   entities, typically used to query or change information on a given entity.
</dl>

_Stanzas_ carry information in their _payloads_, which are added as child
elements of the _stanza_.  By using XML namespaces for _payloads_, the XMPP
protocol can easily be extended to support a virtually unlimited amount of
information types, without having to worry about conflicting _payload_ element
names.

Here are some examples of the different _stanzas_.

A _messsage stanza_:

```
<message from="alice@wonderland.lit/RabbitHole" to="sister@realworld.lit">
   <body>Hi there!</body>
</message>
```

A _presence stanza_:

```
<presence from="alice@wonderland.lit/Home">
   <show>away</show>
   <status>Down the rabbit hole!</status>
</presence>
```

An _Info/query stanza_:

```
<iq type="get" id="aad8a" from"alice@wonderland.lit/RabbitHole" to="sister@realworld.lit/Home">
   <query xmlns="jabber:ip:version"/>
</iq>
```
