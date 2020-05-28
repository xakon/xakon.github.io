AWK
===

Even though AWK is a very simple and powerful tool (its DSL can be learned in
a few hours), there are still some corner cases I always forget.


References
----------

 - [Awk Tutorial](https://blog.jpalardy.com/posts/why-learn-awk/):
   A nice, concise tutorial on AWK in 5 parts.


Tricks
------

Use the `-v VAR=VALUE` command-line parameter to pass variables into the AWK
script.  We can even change `OFS` this way:

    awk -v OFS=, '{print $1, $6}'

Sometimes we need to operate on CSV data that come with a header.  We can omit
this first line header with one of the 2 tricks:

    cat data.csv | sed 1q | awk '{print $1, $6}'
    cat data.csv | awk 'NR > 1 { print $1, $6 }'

A nice trick to work with fields and subfields is to override the `FS` and treat
all subfields as fields:

    cat data.csv | awk -F'[,-]' '{ print $1, $6 }'
