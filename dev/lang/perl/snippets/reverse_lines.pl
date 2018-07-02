#!/usr/bin/env perl
# Demo of the null file handle (<>)

use 5.016;
use strict;
use warnings;
use autodie;

while (<>) {
   chomp;
   say scalar reverse;
}
