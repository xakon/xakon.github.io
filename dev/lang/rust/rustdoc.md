rustdoc
=======

The tools are:

    cargo doc		# create documentation
    cargo doc --open	# open browser for documentation
    cargo test		# will execute the examples from documentation

The doc-comments can be denoted with `///` for the next element or with `//!`
for the parent element.  They are written in [CommonMark][commonmark].

I can simply use heading 1 for the sections in the doc-comments.

### Code Blocks ###

By default, code blocks are considered as Rust snippets.
Mark a code block as `no_run` in a doc-string to not execute it,
but it will still be compiled.
With `ignored` the code block will have Rust syntax-highlighting,
but it won't be compiled.
With `compile_fail`, it will be shown as a failed compiled snippet.

Comments in the code blocks are not displayed, but they are still compiled.


References
----------

 - [Official `rustdoc` documentation][https://doc.rust-lang.org/)
 - [Guide on how to write Rust documentation][article]


[commonmark]:	https://commonmark.org/
[article]:	https://blog.guillaume-gomez.fr/articles/2020-03-12+Guide+on+how+to+write+documentation+for+a+Rust+crate
