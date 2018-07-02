#!/usr/bin/env perl
# Demo of the default scalar variable, $_

use 5.016;
use strict;
use warnings;
use autodie;

$_ = 'My name is Paquito';
say if /My name is/;

s/Paquito/Paquita/;

tr/A-Z/a-z/;
say;
