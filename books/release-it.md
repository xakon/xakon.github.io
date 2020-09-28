Release It!
===========

The second edition of the book.

    Release It!
    Michael T. Nygard
    The Pragmatic Prorammers, 2018
    978-1-680-50239-8
    https://pragprog.com/titles/mnee2/release-it-second-edition/


Highlights
----------

### Integration Points ###

Beware of this necessary evil.
   Every integration point will eventually fail in some way, and you need to be
   prepared for that failure.

Prepare for the many forms of failure.
   Integration point failures take several forms, ranging from various network
   errors to semantic errors.  You will not get nice error responses delivered
   through the defined protocol;  instead, you'll see some kind of protocol
   violation, slow response, or outright hang.

Know when to open up abstractions.
   Debugging integration point failures usually requires peeling back a layer of
   abstraction.  Failures are often difficult to debug at the application layer
   because most of them violate the high-level protocols.  Packet sniffers and
   other network diagnostics can help.

Failures propagate quickly.
   Failure in a remote system quickly becomes your problem, usually as a
   cascading failure when your code isn't defensive enough.

Apply patterns to avert integration point problems.
   Defensive programming via Circuit Breaker, Timeouts, Decoupling Middleware,
   and Handshaking will all help you avoid the dangers of integration points.

### Chain Reactions ###

Recognize that one server down jeopardizes the rest.
   A chain reaction happens because the death of one server makes the others
   pick up the slack.  The increased load makes them more likely to fail.
   A chain reaction will quickly bring an entire layer down.  Other layers
   that depend on it must protect themselves, or they will go down in a
   cascading failure.

Hunt for resource leaks.
   Most of the time, a chain reaction happens when your application has a memory
   leak.  As one server runs out of memory and goes down, the other servers pick
   up the dead one's burden.  The increased traffic means they leak memory
   faster.

Hunt for obscure timing bugs.
   Obscure race conditions can also be triggered by traffic.  Again, if one
   server goes down to a deadlock, the increased load on the others makes them
   more likely to hit the deadlock too.

Use Autoscaling.
   In the cloud, you should create health checks for every autoscaling group.
   The scaler will shut down instances that fall their health checks and start
   new ones.  As long as the scaler can react faster than the chain reaction
   propagates, your service will be available.

Defend with Bulkheads.
   Partitioning servers with Bulkheads can prevent chain reactions from taking
   out the entire service --- though they won't help the callers of whichever
   partition does go down.  Use Circuit Breaker on the calling side for that.
