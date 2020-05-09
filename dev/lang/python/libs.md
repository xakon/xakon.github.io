Libraries
=========

Another list of useful Python frameworks and libraries that I can use in projects.

Command-line Interface
----------------------

 - [click](http://click.pocoo.org/5/):
   Command-Line Interface Creation Kit.
 - [Prompt Toolkit](https://python-prompt-toolkit.readthedocs.io/):
   Create powerful command-line applications with history, auto-completion and more.
 - [Pygments](http://pygments.org/):
   Syntax-highlighting for many languages and scripts.
 - [colorama](https://github.com/tartley/colorama):
   Simple cross-platform colored terminal text in Python.
 - [begins](http://begins.readthedocs.io/):
   It makes creating command line applications in Python easy.

### Curses ###

 - [urwid](http://urwid.org/):
   Console user interface library for Python.  Used in `pudb`.
 - [npyscreen](http://npyscreen.readthedocs.io/):
   A powerful library to easily create TUI programs using an architecture
   similar to wxWidgets, GTK+, or Qt.


Testing
-------

 - [Behave](https://github.com/behave/behave/):
   Behavior-driven development (or BDD) is an agile software development
   technique that encourages collaboration between developers, QA and
   non-technical or business participants in a software project.
 - [Responses](https://github.com/dropbox/responses):
   A utility library for mocking out the requests Python library.
 - [HTTPretty](https://github.com/gabrielfalcao/HTTPretty):
   HTTP client mocking tool for Python
 - [VCR.py](https://vcrpy.readthedocs.io/):
   Log any HTTP requests and replay them during testing.
 - [Faker](https://github.com/joke2k/faker/):
   Faker is a Python package that generates fake data for you.
 - [Model Bakery](https://github.com/model-bakers/model_bakery):
   Object factory for Django.  En masse creating objects by automatically
   populating unrelated to a test fields.


Text Utilities
--------------

 - [remarkdown](https://github.com/sgenoud/remarkdown):
   A markdown parser for `docutils` package.
 - [ReportLab](https://www.reportlab.com/):
   PDF generation and managing using Python.
 - [pdfrw](https://github.com/pmaupin/pdfrw)
 - [PyPDF2](https://pythonhosted.org/PyPDF2/),
   [Github page](https://github.com/mstamy2/PyPDF2):
   A library to manage PDFs, extract/change metadata and other stuff.
   It seems that PyPDF2 is a fork of pyPDF.
 - [xmltodict](https://github.com/martinblech/xmltodict):
   Work XML files with the familiar JSON interface.
 - [TextBlob](https://textblob.readthedocs.org/): TBD
 - [python-docx](https://github.com/mikemaccana/python-docx):
   Reads, queries and modifies Microsoft Word 2007/2008 docx files.
 - [Python-Excel](http://python-excel.org/)
 - [xlwt, xlrd](https://github.com/python-excel/):
   Process Excel workbooks from a Python library.


System Programming
------------------

 - [psutil](https://github.com/giampaolo/psutil):
   A cross-platform process and system utilities module for Python.
   I used this library a bit in Redsocks, while measuring memory
   consumption of a single part of an application.
 - [deprecation](http://deprecation.readthedocs.io/en/latest/):
   Easily deprecate old APIs.
 - [tqdm](https://github.com/tqdm/tqdm):
   A simple and powerful way to create progress bars and give user-feedback about
   long-standing tasks.
 - [PyPrind](https://github.com/rasbt/pyprind):
   The PyPrind (Python Progress Indicator) module provides a progress bar and a
   percentage indicator object that let you track the progress of a loop
   structure or other iterative computation. Typical applications include the
   processing of large data sets to provide an intuitive estimate at runtime
   about the progress of the computation.
 - [envelopes](https://github.com/tomekwojcik/envelopes):
   Mailing for human beings.
 - [watchdog](http://pythonhosted.org/watchdog/):
   API library and shell utilities to monitor file system events.
 - [Pulsar](https://github.com/quantmind/pulsar):
   Event driven concurrent framework for python.
 - [Visual Python](http://www.vpython.org/):
   3D Programming for Ordinary Mortals!
   VPython is the Python programming language plus a 3D graphics module
   called "visual" originated by David Scherer in 2000.  VPython makes it
   easy to create navigable 3D displays and animations, even for those with
   limited programming experience. Because it is based on Python, it also has
   much to offer for experienced programmers and researchers.


Web Programming
---------------

 - [Bottle](http://bottlepy.org/):
   A fast, simple and lightweight WSGI micro web-framework.  Build small
   websites and REST APIs in seconds.  All the framework is just one `.py` file
   that you can drop in your directory.
 - [webalchemy](https://github.com/skariel/webalchemy):
   Real-time, Pythonic web framework.
 - [verlure](https://github.com/bbangert/velruse):
   Simplifying third-party authentication for web applications.
 - [clay](https://github.com/uber/clay):
   A framework for building RESTful backend services using best practices.
   It’s a wrapper around Flask.
 - [Flanker](https://github.com/mailgun/flanker): Parser of addresses and
   MIME.
 - [Scapy](http://www.secdev.org/projects/scapy/):
   A powerful interactive packet manipulation program.  It is able to forge or decode packets of a
   wide number of protocols, send them on the wire, capture them, match requests and replies, and
   much more.  It can easily handle most classical tasks like scanning, tracerouting, probing, unit
   tests, attacks or network discovery.
 - [scrapely](https://github.com/scrapy/scrapely):
   Library for extracting structured data from HTML pages.
 - [Lassie](https://github.com/michaelhelmick/lassie):
   Library for retrieving basic content from web sites.
 - <https://github.com/jmcarp/robobrowser>:
   A library for web scraping built on Requests and BeautifulSoup.
   Like Mechanize, but with tests, docs, and a Pythonic interface.

   A simple, Pythonic library for browsing the web without a standalone web
   browser.  RoboBrowser can fetch a page, click on links and buttons, and fill
   out and submit forms. If you need to interact with web services that don't
   have APIs, RoboBrowser can help.


### Django ###
 - [django-tastypie](http://tastypieapi.org/):
   Webservice API framework for Django. It provides a convenient, yet
   powerful and highly customizable abstraction for creating REST-style
   interfaces.

### Flask ###

 - [flask-restful](https://github.com/twilio/flask-restful):
   Simple framework for creating REST APIs.
 - [flask-foundation](https://github.com/JackStouffer/Flask-Foundation):
   A solid foundation for web application.
 - [flask-slither](http://github.com/gevious/flask_slither):
   A small library between MongoDB and JSON API endpoints.


Various
-------

 - [boltons](https://boltons.readthedocs.io/):
   Many system, general-purpose utilities collected in a large library.
 - [matloplib](http://matplotlib.org/):
   The most popular plotting library.
 - [Wikipedia](https://github.com/goldsmith/Wikipedia):
   Access [wikipedia](http://www.wikipedia.org/)'s API using Python.
 - [Music Player Score](https://github.com/albertz/music-player-core):
   This Python module provides a high-level core Music player interface where
   you are supposed to provide all the remaining high-level logic like the user
   interface, the playlist logic and the audio data.
