SQL
===

Some resources and notes about the common SQL implementations.


Resources
---------

### Tutorials ###

 - [Select Start SQL](https://selectstarsql.com/):
   Interactive book which aims to be the best place for learning SQL.
 - [SQL Bolt](https://sqlbolt.com/):
   Interactive SQL lessons on the browser.
 - [SQL Tutorials](http://sqlzoo.net/):
   A list of many SQL tutorials.

### Datasets ###

While learning or playing around with SQL or a new RDBMS, is helpful to have
some data available.  There are many such datasets available around the world.

 - [PostgreSQL DB samples](https://www.postgresql.org/ftp/projects/pgFoundry/dbsamples/)


Syntax
------

White-space in SQL doesn't mind, as long as there is at least one white-space
character between keywords and operators.

SQL is case-insensitive, both in its keywords and table/column names.
It is a good style, though, to write reserved keywords in UPPERCASE and
table/column names or variables in lowercase.

Comments are `--` for inline and `/*` and `*/` for multi-line comments.

_Strings_ in SQL are denoted by single quotes.
Backticks are used if a column or table contains white-space or a reserved
keyword.

Operator `LIKE` let us pattern-match a string, using the `%` for any set of
characters and `_` for a single character.
