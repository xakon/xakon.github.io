Python Tools
============

Interpreters
------------

 - [ipython][ipython]
 - [ptpython][ptpython]:  Amazing REPL interpreter!
 - [bpython][bpython]:
   A fancy curses interface to the Python interactive interpreter.

Debuggers
---------

 - [pudb](https://github.com/inducer/pudb):
   A reminder of Turbo Pascal IDE!

 - [Bugjar](http://pybee.org/bugjar/):
   Graphical interactive debugger for Python.

Linters
-------

 - [Flake8](http://flake8.pycqa.org/)
 - [Pylint](http://www.pylint.org/)
 - [Pyflakes](https://pypi.python.org/pypi/pyflakes)
 - [Pychecker](http://pychecker.sourceforge.net/)

### Static Typing ###

For many years, [mypy](https://github.com/python/mypy) was the first and only
static type checker for Python.  Thus, it set the standard for defining type
hints and other options.  But, nowadays it is not the only option available.

 - [mypy](https://github.com/python/mypy):
   Developed by _Dropbox_, it is the standard type checker everyone uses and
   sets the standards for the others.
 - [pyre](https://pyre-check.org/):
   A static type checker built by _Facebook_ (_Meta_).  Designed for large code
   bases and first-class integration with _Buck_, _Meta_'s build system.
 - [pyright](https://github.com/Microsoft/pyright):
   A type checker built by _Microsoft_, but it is developed using _TypeScript_.
 - [pytype](https://github.com/google/pytype):
   A static type analyzer by _Google_.  It emphasizes type inference and local leniency.
 - [pyanalyze](https://github.com/quora/pyanalyze)


Profilers
---------

 - [Pyinstrument](https://github.com/joerick/pyinstrument/):
   A sampling profiler, with low-overhead (comparing to the builtin `cProfile`),
   eliminating slow calls and measuing wall time.

 - [Line Profiler](http://packages.python.org/line_profiler/):
   Display how fast and how often each line of code is running in scripts.

 - [Memory Profiler](https://github.com/fabianp/memory_profiler):
   Display memory usage of Python script.

 - [Objgraph](http://mg.pov.lt/objgraph/): This tool allows one to see the
   number of objects in memory and also locate all the different places in
   code that hold references to these objects.

 - [pytest-benchmark](https://github.com/ionelmc/pytest-benchmark):
   `py.test` fixture for benchmarking code.

 - [VizTracer](https://readthedocs.org/projects/viztracer/):
   Trace and visualise Python code, even in multi-threading or multi-processing
   modes.

Test Runners
------------

 - [nose](https://nose.readthedocs.io/):
   My favourite test runner.  Small, fast, elegant.

 - [pytest](https://docs.pytest.org/):
   Community's favourite test runner.
   I don't like it as it is super slow, super magical, super heavy on features.
   In short, it is not Pythonic in my opinion.

 - [hammett](https://github.com/boxed/hammett/):
   An alternative to `pytest`, which implements only a subset of `pytest`,
   but is super fast.


Misc
----

 - [poetry](https://python-poetry.org/):
   Managing Python packaging and dependencies in a modern way.
   The workflow of _Poetry_ reminds of _npm_.

 - [PDM](https://pdm.fming.dev/):
   An experimental package manager, that supports PEP-582, which means it can
   install and run packages locally, without needed a virtual environment.

 - [pipenv](https://docs.pipenv.org/):
   "Python Dev Workflow for Humans":  the new and modern way of managing
   virtual environments, but also dependencies.  In a similar way as in
   [cargo](https://doc.rust-lang.org/stable/cargo/) or
   [npm](https://www.npmjs.com/), `pipenv` brings a new era of managing Python
   dependencies and development environments.

 - [pyenv](https://github.com/yyuu/pyenv):
   Selectively install Python version for development, similar to
   [nvm (Node Version Manager)](https://github.com/creationix/nvm).

 - [tox](https://testrun.org/tox/):
   Test a Python package against multiple Python versions.

 - [pip](https://pip.pypa.io/)
 - [virtualenv](https://virtualenv.pypa.io/)
 - [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/)

 - [pip-review](https://pypi.org/project/pip-review/):
   Easily inspect and/or update all dependencies of a project.

 - [pipx](https://pipxproject.github.io/pipx/):
   Install and run Python applications in isolated environments.
   Essentially, it installs a Python application together with its virtual
   environment, hidden from the user.

 - [shiv](https://github.com/linkedin/shiv):
   Easily package all dependencies of a program in a `.zip` file.

 - [PyInstaller](https://pyinstaller.readthedocs.io/):
   Create a single executable out of the source code.


[ipython]:	https://ipython.org/
[ptpython]:	https://github.com/jonathanslenders/ptpython
[bpython]:	http://www.bpython-interpreter.org/
