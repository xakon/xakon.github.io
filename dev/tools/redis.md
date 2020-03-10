Redis
=====


Resources
---------

### Online

 - [Redis](https://redis.io/)
 - [Try Redis](https://try.redis.io/):
   Online tool to demonstrate and check Redis.


### Books

 - [The Little Redis Book](https://www.openmymind.net/redis.pdf):
   Downloaded and ready to be used as a tutorial and a reference.


Notes
-----

### Keys ###

Most Redis commands operate on a key or keys.
All the keys occupy the same namespace (_flat key space_).
They are case-sensitive.
They can also have an automatic expiration time (TTL),
which can be inspected or altered, after it is set.

There can be several _logical databases_, the default is `0`.
Each _key_ is unique in each _logical database_.
Almost always we can assume we work on this default, _logical database_.

### Commands ###

Some _commands_ can block the Redis database, so they might be useful only for
local development, but not in production.  Usually, the non-blocking ones are
more difficult to use, but can be computer-friendly.

With the Redis _commands_ we can manipulate the values in a Redis instance.
Some basic commands include the `SET` and `GET`.

The commands `KEYS` and `SCAN` can help us list the _key names_ in the Redis
database.  `EXISTS` can verify that a _key_ does exist in the database.

We can remove _keys_ using the `DEL` and the `UNLINK` commands.
