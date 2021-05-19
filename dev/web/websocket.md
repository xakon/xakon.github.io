WebSockets
==========

A new Web technology used to solve an old problem with HTTP:  bi-directional
communication between the Browser (client) and the server.  An alternative
technology, more lightweight, and maybe more appropriate on many situations, is
the _Server-Sent Events (SSE)_.

Essentially, the server can push data to the Browser when they are available and
not when the Browser asks for more.  As a side-feature, _WebSockets_ support
also clustering, so that data can be sent to many clients at once.  The data
exchanged over a _WebSocket_ can be textual (more often, JSON) or binary.

Resources
---------

 - [The WebSocket Protocol (RFC-6455)](https://datatracker.ietf.org/doc/html/rfc6455)
 - [WebSockets for fun and profit](https://stackoverflow.blog/2019/12/18/websockets-for-fun-and-profit/)
 - [Server-sent Events (SSE)](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events)
 - [EventSource](https://developer.mozilla.org/en-US/docs/Web/API/EventSource)

Tools
-----

 - [socket.io](https://socket.io/):
   JavaScript library that helps to abstract the _WebSockets_ in the client.
 - [Channels](https://channels.readthedocs.io/):
   Django support for _WebSockets_.
 - [Gorilla](https://github.com/gorilla/websocket):
   The Go framework supports _WebSockets_ out of the box.
 - [ws](https://github.com/websockets/ws):
   Node.js package to create _WebSocket_ servers.
 - [ActionCable](https://edgeguides.rubyonrails.org/action_cable_overview.html):
   Ruby on Rails support for _WebSockets_.

Examples
--------

This JavaScript code helps to debug _WebSockets_ on an application.  It also
demonstrates briefly the common API for _WebSockets_.  A better library, though,
like [socket.io](https://socket.io/) is a better fit.

```javascript
const socket = new WebSocket('ws://localhost:8080');
socket.addEventListener('open', function(event) {
   socket.send('Hello, Server!');
}

socket.addEventListener('message', function(event) {
   console.log('Message from server', event.data);
}

socket.addEventListener('close', function(event) {
   console.log('The connection has been closed');
}
```
