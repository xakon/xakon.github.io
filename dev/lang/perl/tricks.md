Tips and Tricks
===============

Perl is a marvelous and can be used to expressed many tricks,
not always useful, though.  I will try to stick to the interesting
parts.


## Replacement for UNIX tools ##

Perl can be used in-place of `find`, `grep`, `sed`, and `awk`, and in some cases
it can work better than these tools.  Even though I believe we should use the
smallest possible tool for each task, others believe that learning a single,
powerful tool is more efficient.  This is advocated in the book,
[Minimal Perl](https://www.manning.com/books/minimal-perl).

In any case, here are some useful hints for these replacements:

If we replace `awk`, we can pass the `-a` parameter to `perl` and split each
line into the array `@F`.  Perl's arrays start at index 0, whereas `awk` marks
the fields as `$1`, `$2`.  The whole line is at field `$0`, whereas in Perl it
can be found in `$_`

This table summarises the changes:

    | AWK | Perl  |
    |-----+-------|
    | $0  | $_    |
    | $2  | $F[1] |
    | RS  | $/    |
    | ORS | $\    |
    | OFS | $,    |

Perl can also have `BEGIN` and `END` blocks.

We can set the field separator with the `-F` parameter, exactly like `awk`.
In that case, we don't even have to specify the `-a` (modern Perl versions).

If we intent to replace `sed`, this command-line works better:

```shell
perl -ple 's/foo/bar/g'
```

As a summary, the following options mean:

    | Parameter | Meaning                                     |
    |-----------+---------------------------------------------|
    |    -e     | script to execute                           |
    |    -a     | autosplit mode (implicit -n)                |
    |    -p     | implicit loop over lines, print lines       |
    |    -n     | implicit loop over lines, don't print lines |
    |    -l     | automatic chomp of $_, set record-separator |


## Ternary Operator

```perl
my $eggs = 5;
say "You have ",
         $eggs == 0 ? "no eggs"  :
         $eggs == 1 ? "an egg"   :
                      "some eggs";
```

## Array Concatenation

```perl
my @bones   = ("humerus", ("jaw", "skull"), "tibia");
my @fingers = ("thumb", "index", "middle", "ring", "little");
my @parts   = (@bones, @fingers, ("foot", "toes"), "eyeball", "knuckle");
say @parts;
```

## User `grep` like `in` Operator

`grep` constructs a new array by filtering the elements of its input.
Obviously, the length of the resulting array is the *number of successful matches*,
which means I can use `grep` to quickly check whether an array contains an
element:

```perl
print scalar grep { $_ eq 'Columbus' } @capitals;
```
