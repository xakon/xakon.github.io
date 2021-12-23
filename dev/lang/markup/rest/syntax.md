Syntax of reStructuredText
==========================

The syntax of [reStructuredText] is powerful and extensible.  Yet, it's rather
different from [Markdown], so I need to document many of its aspects.

Extensions
----------

The language supports 2 types of extension:

 - Paragraph level (with _Directives_)
 - Inline level (with _Interpreted Text Roles_, or _roles_ for short)

### Paragraph Level Markup ###

Some examples of _Directives_:

```
  .. warning:: Here be dragons!  This topi covers a number of options
     that might alter your database.

     Proceed with caution!

  .. figure:: screenshot-control.jpg
     :width: 50%

     An overview of the admin control panel.
```

Here, `warning` acts as the name of the _directive_.  In the `figure`, the
`screenshot-control.jpg` is an _argument_, `:width:` is an _option_, and the
rest is the _content_.

### Inline Markup ###

Inside the paragraph we can use the following tools:

```
You can learn more about this in :rfc:`1984`.
It is implemented in our code at :class:`System.Security`.

Check out :jira:`199` for information on the :toy:`jump-rope`.
There is a fix in our :unit-test:`assert-jump-rope-length`.
```

All the _roles_ in the above paragraphs can be defined with Python code to
display anything or act anyhow we want.


References
----------

A simple reference is defined like this:

```
.. _reference-target-name::

This is a bit of content.

This is how you point to the above reference, :ref:`reference-target-name`.
```


[reStructuredText]:	http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
[Markdown]:		http://daringfireball.net/projects/markdown/
