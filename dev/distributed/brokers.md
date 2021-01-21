Message Brokers
===============

[Message Brokers][wikipedia] is such a fundamental component of an Enterprise Distributed System.
They provide means for different other components to communicate asynchronously while working on different speeds.

For some reason, I didn't follow at the time the changes and advances in Enterprise Software.
[Message Brokers][wikipedia] is one of them.  I need to come back.

Libraries
---------

 - [nanomsg][nanomsg]:  Really light-weight!
 - [∅MQ][zmq]:  ZeroMQ, the best way to use Networking!
 - [Raft][raft]:  More comments follow.
 - [MQTT][mqtt]:  Lightweight protocol, great for IoT devices
 - [AMQT][amqt]:  The "standard" Enterprise solution.


### Raft

In an excellent article at [Gopher Academy][gopher] I've read the [Raft][raft]
protocol for building Distributed Systems.  Maybe I can apply these techniques
in a project like the CDN Bots (just for fun, of course).

Some references from this article are:

 - [Writing a Distributed Systems Library in Go][article]
 - [Go-Raft][go-raft]


### MQTT

It seems that [MQTT][mqtt] is the new kid on the block regarding message brokers.
It is a light-weight protocol of Publish/Subscribe implementations, with a lot of
configurability and flexibility, with many language implementations, and suitable
for IoT implementations.

There is a very interesting introduction of the protocol in a
[LWN article](https://lwn.net/Articles/753705/), which I keep here for future
reference.  Also, I read a very nice tutorial in [Page Fault][pagefault-tutorial]
on how exactly we can use [MQTT][mqtt] with micro-controllers.
The design of such an implementation for IoT devices is also presented in a
[Page Fault article][pagefault-design].

[pagefault-tutorial]: https://pagefault.blog/2017/08/01/flash-sonoff-s20-wifi-outlet-with-custom-mqtt-firmware/
[pagefault-design]:   https://pagefault.blog/2017/03/02/using-local-mqtt-broker-for-cloud-and-interprocess-communication/

There are many implementations of the protocol, one of them is
[Mosquitto](http://mosquitto.org/).


[article]:	https://blog.gopheracademy.com/writing-a-distributed-systems-library/
[wikipedia]:	https://en.wikipedia.org/wiki/Message_broker
[gopher]:	https://www.gopheracademy.com/
[raft]:		http://raftconsensus.github.io/
[go-raft]:	https://github.com/goraft/raft
[nanomsg]:	http://nanomsg.org/index.html
[zmq]:		http://zguide.zeromq.org/
[mqtt]:		http://mqtt.org/
