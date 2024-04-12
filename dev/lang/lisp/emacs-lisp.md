Emacs Lisp (elisp)
==================

We can easily test some *elisp* commands either in a scratch buffer or at the
command-line, by passing to Emacs the following arguments:

    $ emacs --batch --eval '...'

A symbol in Emacs Lisp can be **both** a value **and** a function at the same
time.  A function that evaluates while pressing keys is called
*interactive function* or *command*.

Here is a template for creating new functions:

```elisp
   (defun function-name (optional-arguments...)
	 "Optional but strongly recommended documentation."
	 (interactive argument-passing-info)		; optional
	 function-body...)
```


Resources
---------

### Tutorials ###

 - [Awesome ELisp](https://github.com/p3r7/awesome-elisp):
   Curated list of resources for Emacs Lisp (ELisp) development.

 - [Casting SPELs in LISP](http://www.lisperati.com/casting-spels-emacs/html/casting-spels-emacs-1.html):
   A tutorial in the form of a comic book, adaptation of the Common Lisp edition.


Reference
---------

### General-Purpose

 Type	|         Name		| Description
--------|-----------------------|---------------------------------------------
 value	| fill-column		|

 func	| set			|
 func	| setq			| Convenient shorthand for `(set 'symbol value)`.
				| We can also set multiple values at once.
 func	| let			|
 macro	| defun			| Create a new function
 func	| interactive		| Mark a funcion as *interactive* (*command*)

### Predicates

 Type	|         Name		| Description
--------|-----------------------|---------------------------------------------
 func	| zerop			|
 func	| listp			|
 func	| number-or-marker-p	|

### Conversions

 Type	|         Name		| Description
--------|-----------------------|---------------------------------------------
 func	| number-to-string	|
 func	| int-to-string		|

### Strings

 Type	|         Name		| Description
--------|-----------------------|---------------------------------------------
 func	| concat		|
 func	| substring		|
 func	| message		| Display a message to the user.

### Buffers

 Type	|         Name		| Description
--------|-----------------------|---------------------------------------------
 func	| buffer-name		| Show only the filename or the temp buffer name
 func	| buffer-file-name	| Show absolute paths or `nil` if temp buffer
 func	| current-buffer	| Return a *buffer* object for active buffer
 func	| other-buffer		| Return a *buffer* object for alternate buffer
 func	| switch-to-buffer	| Change active buffer and display it
 func	| set-buffer		| Change active buffer without displaying it
 func	| point			| Return position of cursor inside the buffer
 func	| point-min		| Minimum position we can move the cursor
 func	| point-max		| Maximum position we can move the cursor
