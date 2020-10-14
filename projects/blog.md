Static Blog
===========

Nowadays, everybody must have a Blog, and a static-generated one is better
served and fit more in my needs.  I can't choose the platform, that's why I am
about to transfer my Wordpress blog into different engines and compare at the
end which one better fits to my needs.

[Vimwiki](http://vimwiki.github.io/) provides easy installation, 3 language support
(Vimwiki, Markdown, MediaWiki) and beautiful colorschemes.  Can be considered as a
good alternative for taking notes.

Also, check-out the [DWiki](https://utcc.utoronto.ca/~cks/space/dwiki/DWiki) option,
which seems to be quite close to my needs.  Its author uses it for both blog articles
and notes.

Luciano Ramalho, author of the "Fluent Python", uses [dokuwiki](https://www.dokuwiki.org/).
He argues that it uses a simple directory structure to save the content, in plain text
files, which makes administration and deployment rather easy.

A more complete and better list can be at [StaticGen](https://www.staticgen.com/).


### MkDocs ###

Official Site:		<https://www.mkdocs.org/>
Platform:		[Python][python]
Themes:			[Custom Themes](https://www.mkdocs.org/user-guide/custom-themes/)
Details:		There are many 3rd party themes.  _MkDocs_ is one of the
                        best ways to create online documentation for a project.
			It can be used for other static sites, as well.
			Unfortunately, it supports only Markdown, but a rich
			version of it, based on [Python Markdown][python-markdown].

### Hugo ###

Official Site:		<http://gohugo.io/>
Platform:		[Go][golang]
Themes:			[Hugo Themes Site](http://themes.gohugo.io/)
Details:		Many themes
Reference:		<http://arslan.io/2017/11/30/notes-about-migrating-to-hugo/>

### Blades ###

Official Site:		<https://www.getblades.org/>
Platform:		[Rust][rust]
Themes:			[Themes](https://www.getblades.org/themes/)
Details:		Blazingly fast, but also primitive in features.

### Urubu ###

Official Site:		<http://urubu.jandecaluwe.com/>
Platform:		[Python][python]
Themes:			
Details:		A micro CMS for static websites, not just blogs.

### Pelican ###

Official Site:		<https://getpelican.com/>
Platform:		[Python][python]
Themes:			
Details:		

### Nikola ###

Official Site:		<http://getnikola.com/>
Platform:		[Python][python]
Themes:			
Details:		Alternative to Pelican, it seems more promising than
			the latter.  It is very intuitive (no need to read the
			manual).  Nice integration with TeX math mode (using
			mathjax).
Reference:		<http://asmeurer.github.io/blog/posts/moving-to-github-pages-with-nikola/>

### Jekyll ###

Official Site:		<https://jekyllrb.com/>
Platform:		[Ruby][ruby]
Themes:			
Details:		Comes with Github Pages, but also used separately.
			After reading the article in reference, it is a good idea
			to take advantage of my Github account and *replicate* my
			on Github Pages, as well.  After all, it's cheap hosting
			(free) and comes with nice backup.
Reference:		<https://micahcowell.com/2016/03/10/ghost-to-jekyll.html>

### Gutenberg ###

Official Site:		<https://www.getgutenberg.io/>
Platform:		[Rust][rust]
Themes:
Details:

### Hakyll ###

Official Site:		<https://jaspervdj.be/hakyll/>
Platform:		[Haskell][haskell]
Themes:			
Details:		


Hosting
-------

There are a few different options for hosting a static blog, notes, or a site.

### Bitbucket Pages ###

<https://confluence.atlassian.com/bitbucket/publishing-a-website-on-bitbucket-cloud-221449776.html>

### Gitlab Pages ###

<https://about.gitlab.com/features/pages/>

### GitHub Pages ###

<https://pages.github.com/>

GitHub doesn't support any private repositories for free, so I cannot move **all** my notes there.
Of course, this could not be a problem, as I should probably keep private information away from
the main notebook.

**NOTE**:  After the acquisition of GitHub from Microsoft, there is no requirement any more for the
number of the private repositories.


[golang]:		https://golang.org/
[python]:		https://python.org/
[haskell]:		https://haskell.org/
[ruby]:			https://www.ruby-lang.org/
[rust]:			https://www.rust-lang.org/
[python-mardkown]:	https://python-markdown.github.io/
