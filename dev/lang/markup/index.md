Markup Languages
================

The topic is trend, the choices enormous.  Need to write down a list of the most
common formats and some links to them for easier access.

## WikiText

The mother of all the lightweight markup languages (first the Wikis came into existence)
then the other languages started to appear.  There are some pros and cons with its syntax,
but in general I like it a lot.

[wikitext]:	https://en.wikipedia.org/wiki/Wiki#Editing


## Markdown

[Markdown]:
The project that started it all!  After all, this document is written in Markdown.

The language is simple but not adequate.  Thus, many clones of it exist, and an effort
for an official standard has already begun.

Other *Markdown* implementations are:

   * [CommonMark]
   * GitHub Flavored Markdown
   * [dllup][dllup]:
   A *Markdown* clone, that strives to be HTML-complete and strict in its format.

[Markdown]:	http://daringfireball.net/projects/markdown/
[CommonMark]:	http://commonmark.org/
[dllup]:	http://www.dllu.net/programming/dllup/


## Asciidoc

[Asciidoc]:
My favourite, although not as simple as the *Markdown*.
Almost all of [Git] and *Linux* man pages are written using this
tool/language.  It is very convenient because it can output many different formats,
man(1) included, which is very important for tools like *Git* and *Linux*.

Although my favourite system, I still struggle to learn its syntax, which is not so
beautiful as in other formats.

The language has its own program to convert between files, but there is also
another project with the name of [AsciiDoctor].  Need to find more
information about it!

See also this reference from [AsciiDoctor][asciidoc-ref].
Alternatively, this [cheatsheet][ascii-cheat] is also useful.

[Asciidoc]:	http://asciidoc.org/)
[asciidoc-old]:	http://www.methods.co.nz/asciidoc/
[ascii-cheat]:	https://powerman.name/doc/asciidoc
[asciidoc-ref]:	http://asciidoctor.org/docs/asciidoc-writers-guide/
[AsciiDoctor]:	http://asciidoctor.org/
[Git]:		http://git-scm.com/


## reStructuredText

[reStructuredText][rst]:
The official format of [Python].

It is powerful, extensible, you can use it to document your Python code and there are
great tools that use it, like [Sphinx].

The final documents are very beautiful, but sometimes also very terse.
The language is also extensible.

 * [Quick reStructuredText][quick-rst]
 * [Primer][rst-primer-1]
 * [reStructuredText Primer][rst-primer-2]
 * [reStructuredText Tutorial][rst-tut-1]

Although we can parse and convert reStructuredText documents with
[Pandoc], the definitive tool to use it [docutils].
If I install it on Debian, I have a plethora of tools available for various
conversions:

 - `rst2html`
 - `rst2html4`
 - `rst2html5`
 - `rst2man`
 - `rst2xml`
 - `rst2latex`
 - `rst2xetex`
 - And many others...

Also, [Sphinx] is another tool for reStructuredText, a wrapper over
[docutils], which adds some nice to have features, especially while
working on large projects/documents or for Pyton documentation.  By the way,
the official Python's documentation is written using [Sphinx] and many
other libraries and Python projects have also adopted it as their documentation
tool.  As a consequence, reStructuredText is considered the "blessed" format for
Python documentation, and some doc-strings are written using it.

[rst]:		http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
[quick-rst]:	http://docutils.sourceforge.net/docs/user/rst/quickref.html
[rst-primer-1]:	http://docutils.sourceforge.net/docs/user/rst/quickstart.html
[rst-primer-2]:	http://www.sphinx-doc.org/en/stable/rest.html
[rst-tut-1]:	https://www.devdungeon.com/content/restructuredtext-rst-tutorial-0
[docutils]:	http://docutils.sourceforge.net/
[Sphinx]:	http://sphinx-doc.org/
[Python]:	http://www.python.org
[Pandoc]:	https://pandoc.org/
