PostgreSQL
==========


Resources
---------

### URLs ###

 - [PostgreSQL](https://www.postgresql.org/)
 - [PostgreSQL Exercises](http://pgexercises.com/)
 - [The Internals of PostgreSQL](http://www.interdb.jp/pg/)
 - [Postgres Observability](https://pgstats.dev/)
 - [My GOTO Postgres Configuration for Web Services][web-config]
 - [Postgres Tips and Tricks](https://pgdash.io/blog/postgres-tips-and-tricks.html)


[web-config]:	https://tightlycoupled.io/my-goto-postgres-configuration-for-web-services/


### Books ###

 - [The Internals of PostgreSQL](http://www.interdb.jp/pg/):
   An online, interesting book about PostgreSQL, with nice figures, diagrams,
   explanations of database issues.

### Datasets ###

 - [PostgreSQL DB samples](https://www.postgresql.org/ftp/projects/pgFoundry/dbsamples/)


References
----------

Some notes about some terms, techniques, and other information, specific to
PostgreSQL.

### Roles ###

PostgreSQL uses _roles_ for authentication.  They can be either _groups_ or
_users_.  Only the latter can actually log into the database.  A _user_ needs to
use the `INHERIT` property in order to get the _group_'s permissions.

The default available _role_ to administer a PostgreSQL system is the
`postgres`.

PostgreSQL supports many types of user authentication.  The most basic one is
_peer authentication_, connecting locally with host's username.  But, in order
to connect to the database from other machines, _peer authentication_ is simply
not enough.  We need to set in the file `pg_hba.conf` (HBA - Host-based
Authentication) which users can connect under which method in the database.

#### Examples ####

```sql
CREATE ROLE a_group;
CREATE ROLE a_user INHERIT;
GRANT a_group TO a_user;

REVOKE a_group FROM a_user;
DROP ROLE a_user;

GRANT CONNECT ON DATABASE somedb TO a_user;
GRANT SELECT ON users TO a_user;

ALTER USER a_user WITH LOGIN;
```

### psql ###

Some useful commands:

 - `\l`		- list available databases
 - `\conninfo`	- print current connected database
 - `\c`		- switch (connect to) databases
 - `\du`	- available roles (table `pg_roles`)
 - `\dt`	- list available tables
 - `\d`		- print table's schema

### SQL ###

```SQL
   CREATE DATABASE somedb;
   DROP DATABASE somedb;

   CREATE TABLE users (
      id SERIAL PRIMARY KEY,
      name VARCHAR(255)
   );
```
