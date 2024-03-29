Python
======

 - [Key differences between Python 2.7.x and Python 3.x](
   http://nbviewer.ipython.org/github/rasbt/python_reference/blob/master/tutorials/key_differences_between_python_2_and_3.ipynb)

 - [Python Mock Gotchas](
   http://alexmarandon.com/articles/python_mock_gotchas/)



Documentation
-------------

### Books

 - Python Cookbook, 3/e
 - Fluent Python
 - [The Hitchhiker's Guide to Python](http://docs.python-guide.org/)
 - [Full Stack Python](https://www.fullstackpython.com/)
 - [Python 3 Patterns, Recipes and Idioms](http://python-3-patterns-idioms-test.readthedocs.org/)
 - [Inside the Python Virtual Machine](https://leanpub.com/insidethepythonvirtualmachine)


### Online Resources

 - [pyvideo.org](http://pyvideo.org/)
 - [Google Style Guide](https://google.github.io/styleguide/pyguide.html)


### Changelog

 - [What's New in Python 3.0][new-3.0]
 - [What's New in Python 3.1][new-3.1]
 - [What's New in Python 3.2][new-3.2]
 - [What's New in Python 3.3][new-3.3]
 - [What's New in Python 3.4][new-3.4]
 - [What's New in Python 3.5][new-3.5]
 - [What's New in Python 3.6][new-3.6]


[new-3.0]:	https://docs.python.org/3/whatsnew/3.0.html
[new-3.1]:	https://docs.python.org/3/whatsnew/3.1.html
[new-3.2]:	https://docs.python.org/3/whatsnew/3.2.html
[new-3.3]:	https://docs.python.org/3/whatsnew/3.3.html
[new-3.4]:	https://docs.python.org/3/whatsnew/3.4.html
[new-3.5]:	https://docs.python.org/3.5/whatsnew/3.5.html
[new-3.6]:	https://docs.python.org/3.6/whatsnew/3.6.html


### Cookbooks

 - [`str.format()`](http://mkaz.com/2012/10/10/python-string-format/)
 - [`argparse`](https://mkaz.com/2014/07/26/python-argparse-cookbook/)
 - [`async`/`await`](http://masnun.com/2015/11/13/python-generators-coroutines-native-coroutines-and-async-await.html)
 - [PyTest Tricks](http://hackebrot.github.io/pytest-tricks/)
 - [Python Packaging User Guide](https://packaging.python.org/)
 - [PyPI Quick and Dirty][pypi-guide]:
   An article for common setup and distribution idioms of Python packages.
   Also, the same author, Hynek Schlawack, has put a demo project in Github,
   [hatch-fancy-pypi-readme](https://github.com/hynek/hatch-fancy-pypi-readme/),
   where he showcases how we can write a `pyproject.toml` for use with PyPI,
   and what the results would be.  These can be shown in the relevant
   [PyPI page](https://pypi.org/project/hatch-fancy-pypi-readme/).


[pypi-guide]:	https://hynek.me/articles/sharing-your-labor-of-love-pypi-quick-and-dirty/


### Techniques

#### Import Hidden Modules

If in a package you need to import other, system for example, packages, but
don't want to clutter package's namespace:

```python
    >>> import sys as _sys
    >>> import os as _os
```

Underscore variables are considered "private" and aren't included during
`from pkg import *`.

#### Read from STDIN or Command-Line

`fileinput` module helps reading from command-line arguments or from STDIN,
if `sys.argv` is empty:
```python
   import fileinput
   for s in fileinput.input():
      print s
```

#### Transpose a Matrix

```python
    >>> transposed = [list(row) for row in zip(*matrix)]
```

#### More Matrix Operations

Other Matrix operations, using the `zip()` builtin (found at this [article][zips]):

```python
# group x and y components of vectors into separate lists
dots = [(1, 3), (2, 4), (3, 5)]
x_lst, y_lst = zip(*dots)

# transpose a matrix
matrix = [(1, 2), (3, 4), (5, 6)]
zip(*matrix)

# rotate a matrix
zip(*matrix[::-1])

# cluster data-series into n-length groups
seq = range(1, 10)
zip(*[iter(seq)]*3)
```

```python
# Flatten nexted lists (sequences)
flatten = lambda xs: itertools.chain(*xs)
flatten = lambda xs: itertools.chain.from_iterable(xs)
```

We can omit the unpacking of the `xs` parameter in the second form, as the
`chain.from_iterable()` accepts an iterable, which will consume lazily.
Thus, it is much faster and convenient than the simple `chain(*xs)` call, where
we pay the cost of unpacking the iterable in the first place.

Unpack a page-range spec:

```python
s = '1,7-11,15'
L = [
      i for p in s.split(',')
	 for a, _, b in [p.partition('-')]
	    for i in range(int(a), int(b or a) + 1)
   ]
```

[zips]:		http://pavdmyt.com/python-zip-fu/


#### Case-insensitive Comparison of Strings

In a very enlightening article at [Digital Ocean][cmp-strings], it was shown how
one can effectively compare strings in Go.  Of course, the same rules apply to
Python:

```python
    # Instead of doing this:
    return a.lower() == b.lower()

    # Do this:
    def string_icompare(a, b):
	if len(a) != len(b):
	    return False
	for p, q in zip(a, b):
	    if p == q:
		continue
	    if p.lower() == q.lower():
		return False
	return True
```

Unfortunately, I ran some benchmarks, and it seems that this technique is not
really efficient in Python.  I suspect the reason to be that str.lower()
compares the strings in C, maybe also using the string hashes, whereas the
manual loop takes place in Python, which is way too slower.

[cmp-strings]:	https://www.digitalocean.com/community/questions/how-to-efficiently-compare-strings-in-go


#### Quick tracing

Here's a quick way to see what code is actually run when calling some libraries.

Place the following in a `shell.py`:

```python
import code
con = code.InteractiveConsole()
con.interact()
```

Then run:

```shell
$ python -mtrace --ignore-module=code,codeop,__future__ --trace shell.py
```

The tip comes from [ionel's codelog](https://blog.ionelmc.ro/2014/04/28/quick-tracing/).


Packages
--------

Here comes a list of packages I'm constantly finding in Web, and might be
useful someday in the future.  The list is divided by categories.
See also separate files for these categories.

Except of [PyPI (Python Package Index)](https://pypi.org/), there is also the
[Awesome Python](https://awesome-python.com/) site, where we can find Python
packages and libraries based on a category.

The [PEP 440](http://www.python.org/dev/peps/pep-0440/) defines which versions a
Python package should follow.  This the scheme that `pip` also works best, and
[PyPI](https://pypi.org) expects to work with.

The versions should follow this pattern: `N[.N]+[{a|b|c|rc}N][.postN][.devN]`.
This means, that both `2.3` and `3.4.1` are valid versions.  Also the following:

 - `2.3.1a`:  an ALPHA version
 - `2.3.1b`:  a BETA version
 - `2.3.1c`:  a release-candidate
 - `2.3.1rc2`:  a release-candidate
 - `2.3.1.dev3`: a testing, development version (ignore it).  It is discouraged.
 - `2.3.1.post2`: a post release, where we change something in the package,
   (like documentation or metadata), but not in the code.  An elegant way to fix
   a broken deployment to [PyPI](https://pypi.org).

Creation of pip repository
--------------------------

In a useful [article](https://jpmens.net/2020/01/16/creating-a-simple-python-pip-repository/)
it is summarized nicely how a pip repository looks like.  In short, it is served
from a Web server using a structure like this:

    airports
      |
      +---- airports-0.2.tar.gz
      |
      +---- airports-0.5.tar.gz
    paho-mqtt
      |
      +---- paho-mqtt-1.3.tar.gz



[-]:	vim: ft=markdown
