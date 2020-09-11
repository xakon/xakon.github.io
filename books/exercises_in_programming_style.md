Exercises in Programming Style
==============================

    Exercises in Programming Style
    Cristina Videira Lopes
    CRC Press, 2014
    1-48-222737-1
    978-1-4822-2737-6


Outline
-------

The book describes the same problem in 33 different programming styles.
These styles would make more sense if the program was written in a language that
better fits this style, but in order for the code to be readable and executable,
it was chosen Python 2.  The online repository contains updated to Python 3
code, as well.

The exercise that is presented is the **term frequency**:  print the _N_ (25)
most common words and their frequencies from an input file, normalize the
capitalization and ignoring _stop words_.

As exercises, 3 more variations of the same program are considered.
Also, implementing the program in a different language is also recommended.
Since the point of the book is not to teach a programming language but mainly to
introduce the reader to programming styles, I won't type the programs, but I
will copy them from the online repository.  With some exercises I will have the
chance to still change the original programs and develop new ones, based on
them.

Other exercises can involve:

### Word Index ###

Given a text file, output all words alphabetically, along with the page numbers
on which they occur.  Ignore all words that occur more than 100 times.  Assume
that a page is a sequence of 45 lines.

### Words in Context ###

Given a text file, display certain words alphabetically and in context, along
with the page numbers of the pages in which they occur.  Assume that a page is a
sequence of 45 lines.  Assume that context consists of the preceding and
succeeding 2 words.  Ignore punctuation.


Resources
---------

 - [Companion code](http://github.com/crista/exercises-in-programming-style)


Styles
------

 1. Good Old Times:
   Constrained environment in both memory and language constructs.
   Early assemblies or machine-code.

 2. Go Forth
   The style suggested by **Forth** on a stack-based architecture.
