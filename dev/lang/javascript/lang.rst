=================
JavaScript Syntax
=================

Notes about the syntax and the semantics of the language.

HTML
====

Similar to CSS, JavaScript code can be included embedded in an HTML page using
the ``<script>`` element (again inside the ``<head>`` element), or referenced
externally using the ``src`` attribute of the same tag.
(what can happen if both embedded script and ``src`` atribute are specified?)


Engines
=======

The most popular JavaScript engines are:

 - SpiderMonkey_ (Mozilla Firefox)

 - `Chrome V8`_ (Google Chrome, Node.js)

 - Chakra_ (MS Explorer, MS Edge)

 - JavaScriptCore_ (Apple Safari)

.. _SpiderMonkey:	https://developer.mozilla.org/en/docs/SpiderMonkey
.. _Chakra:		https://github.com/Microsoft/ChakraCore
.. _JavaScriptCore:	https://developer.apple.com/reference/javascriptcore
.. _Chrome V8:		https://developers.google.com/v8/


Types
=====

Five primitive types:

 1. Numbers
 2. Booleans
 3. Strings
 4. ``null``
 5. ``undefined``

Composite types are ``Arrays`` and ``Objects``.  But, essentially, ``Arrays``
are also ``Objects``, only a special notation/syntax exists to easily declare
them or access their elements.

``Arrays`` can have negative indices.  They are ordered collections.
Setting a value in a field larger than its length, will fill intermediate
values with ``undefined`` values.

``Objects`` are collections of associated key/value pairs.


Functions
=========

_Functions_ are also ``Objects`` in JavaScript, which we can call and
optionally get a result.

There are several ways of declaring a *function* in modern (ES6) JavaScript:

 - *Function Declaration*:
   It uses the _function_ statement.

 - *Function Expression*:
   It uses the _function_ expression.
   Optionally, we can also give a name into the function object created.
   Rather confusing, as it looks almost the same as a _Function Declaration*.

 - *Arrow Function*

 - *Generator Function Declaration*
   It uses the _function*_ statement.

 - *Generator Function Expression*
   It uses the _function*_ expression.


Objects
=======

_Objects_ in JavaScript can be created in 3 ways:

 - Object literal syntax (similar to Python `dict`)
 - Object constructor (similar to Java's syntax of creating objects)
 - Function constructor, conventionally these functions are CamelCase written
   (mimic a constructor by using low-level JavaScript primitives)
 - Class definition

More commonly, _objects_ are created with the help of a creational builder and
factory Design Pattern.
