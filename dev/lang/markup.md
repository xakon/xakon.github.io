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

[Markdown][markdown]:
The project that started it all!  After all, this document is written in Markdown.

The language is simple but not adequate.  Thus, many clones of it exist, and an effort
for an official standard has already begun.

Other *Markdown* implementations are:

   * [CommonMark][commonmark]
   * GitHub Flavored Markdown
   * [dllup][dllup]:
   A *Markdown* clone, that strives to be HTML-complete and strict in its format.

[markdown]:	http://daringfireball.net/projects/markdown/
[commonmark]:	http://commonmark.org/
[dllup]:	http://www.dllu.net/programming/dllup/


## Asciidoc

[Asciidoc][asciidoc]:
My favourite, although not as simple as the *Markdown*.
Almost all of [Git][git] and *Linux* man pages are written using this
tool/language.  It is very convenient because it can output many different formats,
man(1) included, which is very important for tools like *Git* and *Linux*.

Although my favourite system, I still struggle to learn its syntax, which is not so
beautiful as in other formats.

The language has its own program to convert between files, but there is also
another project with the name of [AsciiDoctor][asciidoctor].  Need to find more
information about it!

See also this reference from [AsciiDoctor][asciidoc-ref].
Alternatively, this [cheatsheet][ascii-cheat] is also useful.

[asciidoc]:	http://asciidoc.org/)
[asciidoc-old]:	http://www.methods.co.nz/asciidoc/
[ascii-cheat]:	https://powerman.name/doc/asciidoc
[asciidoc-ref]:	http://asciidoctor.org/docs/asciidoc-writers-guide/
[asciidoctor]:	http://asciidoctor.org/
[git]:		http://git-scm.com/


## reStructuredText

[reStructuredText][rst]:
The official format of [Python][python].

It is powerful, extensible, you can use it to document your Python code and there are
great tools that use it, like [Sphinx][sphinx].

The final documents are very beautiful, but sometimes also very terse.
The language is also extensible.

 * [Quick reStructuredText][quick-rst]
 * [Primer][rst-primer-1]
 * [reStructuredText Primer][rst-primer-2]
 * [reStructuredText Tutorial][rst-tut-1]

[rst]:		http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
[quick-rst]:	http://docutils.sourceforge.net/docs/user/rst/quickref.html
[rst-primer-1]:	http://docutils.sourceforge.net/docs/user/rst/quickstart.html
[rst-primer-2]:	http://www.sphinx-doc.org/en/stable/rest.html
[rst-tut-1]:	https://www.devdungeon.com/content/restructuredtext-rst-tutorial-0
[sphinx]:	http://sphinx-doc.org/
[python]:	http://www.python.org
