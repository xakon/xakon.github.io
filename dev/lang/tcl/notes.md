Tcl Syntax
==========

Tools
-----

Tcl is an embeddable language.  An interpreter is installed with the name
`tclsh`, which can be used as a REPL or it can also execute Tcl scripts.
There is also another interpreter, `wish` (WIndowing SHell), which bundles and
includes the Tk code, as well.  There are many other options for specialized
interpreters and tools, more information can be found at Tcl's Wiki.

In `tclsh`, we can type `info commands` to get a list of all the commands the
interpreter knows about.


Syntax
------

Tcl has a rather unique and strange syntax, even though the rules are rather
simple.

Comments in Tcl start with `#`.  Inline comments have to placed after the
terminating semi-colon, otherwise the interpreter will consider the comment as
_arguments_ to the running _command_.

A Tcl script consists of a series of _commands_.

A _command_ can have some optional or not _arguments_ or _words_.
The _command_ is terminated either by a newline or by semi-colon (`;`).
All the _arguments_ are strings and if any of them contains spaces,
they should be enclosed in double quotes or braces (`"` or `{}`).
The difference between the 2 types of strings is that only strings with double
quotes _interpolate_ or substitute any included variables.

In Tcl everything is represented as a _string_, although internally the
interpreter might save the value in a more compact and efficient way.

An _array_ uses parentheses for the index (`array(index)`).


Variables
---------

The _assignment command_ is `set`.  It returns the first argument,
and if a second one exists, it assigns it to the first one.

We can take the value of a _variable_ by prefixing the _variable name_ with a
dollar sign (`$`).  Otherwise, without the `$`, we get the reference of the
variable.  Some _commands_, like `set` for example, need the _reference_ of a
_variable_ in order to alter its value.


Commands
--------

_Commands_ get their _arguments_ either _by name_ or _by value_.
If it doesn't change the _argument_, it accepts parameters _by value_.
Otherwise, it accepts parameters _by name_.

The evaluation of a _command_ is done in 2 phases (only):
a **single** pass of substitutions & the evaluation of the resulting _command_.
In the first pass of substitutions, _variable substitution_ takes place,
then command execution.  _Command substitution_ in a _command_ takes place
by enclosing the embedded _command_ inside square brackets (`[]`).

A  _command_ can also have some _subcommands_, like the `string`.
This greatly helps organize and simplify the names of many _commands_.


Expressions
-----------

Tcl _expressions_ are evaluated from the `expr` _command_ and are passed to it
as strings.  They support all common operators, as well as some common
mathematical functions.  Besides of these functions, an _expression_ can contain
another _command_ inside it.  _Expressions_ almost always yield numeric results.

**NOTE**:
   enclosing _expressions_ in curly braces will result faster code, as no
   substitution will need to take place.

The _expressions_ themselves follow the C syntax, supporting also the octal,
hexadecimal, and floating-point notations.


Conditionals
------------

2 _commands_ implement conditionals in Tcl:  `if` and `switch`.


Loops
-----

2 _commands_ implement the Tcl loops:  the `while` and the `for`.
`break` and `continue` _commands_ have the usual special meaning inside blocks
of both looping _commands_.


Procedures
----------

Tcl comes with many _commands_ predefined, some of them resembling keywords
found in other languages.  We can still, of course, extend the environment with
new _commands_.

Adding new _commands_ to the language is achieved with the `proc` _command_.
Inside the body of a `proc` _command_, the return value of the last _command_
becomes the return value of the procedure, unless an explicit `return` _command_
is executed before.

The arguments defined in the `proc` _commands_ can have default values, turning
them as optional parameters while invoking the newly defined _command_.  If the
last argument is `args`, then any arguments that aren't already assigned to
previous variables will be assigned to it.


Regular Expressions
-------------------

Tcl uses the same Regular Expressions as a shell.  They are called _globbing_,
and operate on strings (obviously).  There is also a _glob_ command to
return the files of a directory, exactly as in the shell.


Data Structures
---------------

### Lists

In Tcl _lists_ are an ordered collection of items.  Even _commands_ are _lists_,
with the first element being the name of a `proc`.

_lists_ can be created with the following ways:

 - `split` _command_
 - `list` _command_
 - with the literal list syntax

 Some useful _commands_ on _lists_ are:

  - `lindex`
  - `llength`
  - `foreach`
  - `lappend`
  - `concat`
  - `linsert`
  - `lreplace`
  - `lset`
  - `lsearch`
  - `lsort`
  - `lrange`

### Strings

Some useful _commands_ on _strings_
(actually _subcommands_ of the `string` _command_):

 - `string length`
 - `string index`
 - `string range`
