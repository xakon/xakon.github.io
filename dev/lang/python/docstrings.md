Doc-Strings
===========

Special strings found in script and are used to fill the `__doc__` property of
the container object.  They can appear at the beginning of:

 - module
 - class
 - function
 - method

They can be viewed by manually accessing the `__doc__` property or using the
embedded `hellp()` of the Python interpreter.  Other documentation tools can use
this information to create summaries or extensive documentation based on the
_docstrings_.

There are many different styles of writing the _docstrings_.  The most common
formats are:

 - [Google](https://github.com/google/styleguide/blob/gh-pages/pyguide.md#38-comments-and-docstrings)
 - [reStructuredText](https://docutils.sourceforge.io/rst.html)
 - [NumPy](https://numpydoc.readthedocs.io/en/latest/format.html)
 - [Epytext](http://epydoc.sourceforge.net/epytext.html)
