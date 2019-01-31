pyenv
=====

Some notes on using [pyenv][pyenv].

In general, [pyenv][pyenv] is a Python-version manager, similar to
[nvm](https://github.com/creationix/nvm), which manages
[Node.js](https://nodejs.org/) versions on the system (per user).


Usage
-----

    pyenv install --list
    pyenv versions
    pyenv install 3.6.1
    pyenv global 3.6.1		# global setup, not recommended
    pyenv local 3.6.1		# will create a ".python-version" file


Resources
---------

Some nice articles to introduce [pyenv][pyenv] and give some tips on using it
are:

 - [Python Development on macOS with pyenv][1]
 - [My Python Development Environmnet, 2018 Edition][4], by Jacob Kaplan-Moss
 - [Using pyenv and tox][2]
 - [Setting up Python on a Unix machine (with pyenv and direnv][3]


[1]:	https://medium.com/@jordanthomasg/python-development-on-macos-with-pyenv-2509c694a808>
[2]:	http://holger-peters.de/using-pyenv-and-tox.html
[3]:	https://mike.place/2017/python-pyenv/
[4]:	https://jacobian.org/2018/feb/21/python-environment-2018/


Installation
------------

I prefer the manual installation, as described in the [project's page][pyenv].
More specifically:

    export PYENV_ROOT=$HOME/.local/pyenv

    cd ~/src/foss
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv

    mkdir -p $PYENV_ROOT
    ln -s plugins $PYENV_ROOT
    ln -s ~/src/foss/pyenv/bin/pyenv ~/bin/pyenv

    pyenv root

In order to start using Python version using [pyenv][pyenv],
execute the following command:

    eval "$(pyenv init -)"


[pyenv]:	https://github.com/pyenv/pyenv
