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


Installing with `pip`
---------------------

The simplest approach to install the required dependencies for a project is to
use [pip](https://github.com/pypa/pip).  In the very interesting article,
[Use “pip install” safely](https://www.b-list.org/weblog/2023/dec/07/pip-install-safely/),
the author, James Bennett, suggests to use `pip` with the following parameters:

    $ python3 - m pip install \
        --require-hashes \
        --no-deps \
        --only-binary :all: \
        -r requirements.txt

The options have the following meaning:

 - `--require-hashes`:  reject dependencies without any hashes, in case
   something slipped accidentally in the `requirements.txt`.

 - `--no-deps`:  install **only** what it finds in the `requirements.txt` and
   reject dependencies that pop up and at the moment of the installation.

 - `--only-binary :all:`:  try to install only pre-built _wheels_, avoiding
   accidental installation from sources, which can run any custom Python code.


[pep-441]:	https://py-generic-project.readthedocs.io/en/latest/packaging.html#build-zipapps
