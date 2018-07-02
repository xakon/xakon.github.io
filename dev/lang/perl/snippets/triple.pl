#!/usr/bin/env perl
# Demo of how the same thing can be written in three different ways

use 5.016;
use strict;
use warnings;
use autodie;

my @numbers = (3, 4, 5, 8);

# Novice Perl hacker
my @tripled;

for (my $i = 0; $i < scalar @numbers; $i++) {
   $tripled[$i] = 3 * $numbers[$i];
}

say join (', ', @tripled);

# Perl adept

@tripled = ();

for my $num (@numbers) {
   push @tripled, 3 * $num;
}

say join (', ', @tripled);

# Experienced Perl hacker
@tripled = map { 3 * $_ } @numbers;
say join (', ', @tripled);
