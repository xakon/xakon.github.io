Python Packaging
================

This is a huge and problematic topic in Python development.
I would like to keep a reference and some notes of my findings here.


TODO: extract links and information and document the following article:
[Python's New Package Landscape][landscape]


[landscape]:	http://andrewsforge.com/article/python-new-package-landscape/

In theory, we can install a Python application using `pip` either in the home
directory or inside a _Virtual Environment_.

    $ pip install --user [APP]
    $ python -m venv ENV
    $ . ENV/bin/activate
    $ pip install [APP]

A common technique on distributing Python applications, is to create a _Virtual
Environment_, and ship it together with the application at production.

A well-known technique, which I used in the past, is to ship all the
dependencies of a program in a `.zip` file and distribute this with the
application.  This technique is becoming more popular with Python3 and is
documented in [Building Zipapps (PEP 441)][pep-441].  A tool that can assist on
this packaging is [shiv](https://github.com/linkedin/shiv).

I also had a basic `Makefile` or shell script to do this manually using `pip`.
I need to find it and copy it here!


[pep-441]:	https://py-generic-project.readthedocs.io/en/latest/packaging.html#build-zipapps
