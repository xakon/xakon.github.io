Modern Perl
===========

Some notes I keep during reading the book "Modern Perl, 4/e".
I hope these notes to help me better understand the language.
I don't intent to become a master in Perl, but it always helps
to know some things about it.

[comment]:	# (TODO: at the end of the reading, place these notes in syntax.md)


### Running Modern Perl

Use the following preamble and post commands while running the book's snippets:

```perl
#!/usr/bin/env perl

use 5.016;
use strict;
use warnings;
use autodie;
```

While in tests the following are needed:

```perl
#!/usr/bin/env perl

use 5.016;
use strict;
use warnings;
use autodie;

use Test::More;

# example code here

done_testing();
```


## Context

It is very important to keep in mind which context each statement and expression belongs to,
as the outcome can greatly change depending on each option.

The *Amount context* governs *how many items* you expect an operation to produce.
It can be one of *Void*, *Scalar* or *List* Context.

When we call a function and never use its return value, we use the *void context*.
Assigning the results to a single item, we use the *scalar context*.
We can also explicitly switch to scalar context using the `scalar()` built-in.
Assigning the results to an array or a list, or using it in a list, we use the *list context*.
We can switch explicitly in list context by using parentheses.

Perl's other context --*value context*-- influences how Perl interprets a piece of data.
Perl can figure out the type of the data.  It will coerce values to specific proper types
depending on the operators you use.

The value context can be:  *boolean context* occurs when you use a value in a conditional
statement.  *String context* happens when operators regarding strings are involved, otherwise
we are at *numerical context*.

In rare circumstances, you may not be able to use the appropriate operator to enforce the
value context.  To force a numeric context, add zero to a variable.  To force a string
context, concatenate with the empty string.  To force a boolean context, double up the
negation operator:

```perl
my $numeric_x = 0 + $x;		# forces numeric context
my $stringy_x = '' . $x;	# forces string context
my $boolean_x =    !!$x;	# forces boolean context
```

## Names

*Names* or *identifiers* follow the C syntax.  They can also be UTF-8 characters in them,
if the `utf8` pragma is in effect.


## Variables

A *variable name* always have a leading *sigil*, indicating its type during
its declaration.  Different types belong to different namespaces, and thus can
have the same name (discouraged).

```perl
my $scalar;
my @array;
my %hash;
```

The sigil, though, of a variable changes depending on its use;
these are called *variant sigils*.  Thus, a sigil governs how we manipulate
the data of a variable and can define the context of the expression.

Strange as it can be, Perl variable do not *require* names.
An *anonymous* variable can be accessed, though, only by reference.

The *default scalar variable* (or *topic variable*), `$_`, is most notable in its *absence*:
many of Perl's built-in operations work on the contents of `$_` in the absence of an
explicit variable.  Also, Perl's looping directives default to using `$_` as the iteration
variable.

Perl also provides two implicit array variables:  function parameters are placed in an
array named `@_`.  Array operations inside functions use this array by default.
Outside of all functions, the default array variable `@ARGV` contains the command-line
arguments of the program.  `@ARGV` has one special case:  if you read from the null file
handle `<>`, Perl will treat every element in `@ARGV` as the *name* of a file to open for
reading.  If it's empty, then Perl will read from the standard input.


## Namespaces

A *namespace* is a collection of symbols.  They are global, but they don't introduce
a new scope.  Scope is *lexical* in Perl.  Only if a block is introduced after a
namespace, then we have a new lexical scope, and thus short names can be used.
Outside of a namespace, the *fully qualified names* can only be used.
The lexical scope is defined by the contents of a block or a file.

Multilevel namespaces, separated by double colons (`::`) can organize the code.
All namespaces are globally visible.  There is no logical relationship between
the various packages.

By convection, lowercase package names are reserved by Perl for core pragmas
and user-defined packages start with uppercase letters.

## Operators

The triple-dot (`...`) operator is a placeholder for code you intend to fill in later.
Perl will parse it as a complete statement but will throw an exception that you're trying
to run unimplemented code if you try to run it.

The comma operator (`,`) introduces a new list.

The range operator (`..`) introduces a new list of items.

Accessing multiple elements of a hash/array is called *slicing*.
