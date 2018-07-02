Tips and Tricks
===============

Perl is a marvelous and can be used to expressed many tricks,
not always useful, though.  I will try to stick to the interesting
parts.


## Ternary Operator

```perl
my $eggs = 5;
say "You have " , $eggs == 0 ? "no eggs" :
		  $eggs == 1 ? "an egg"  "
		  "some eggs";
```

## Array Concatentation

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
