#!/usr/bin/perl
# Pattern Test Program
# Use this program to validate a regular expression

while (<>) {
   chomp;
   if (/YOU PATTERN GOES HERE/) {
      print "Matched: |$`<$&>$'|\n";
   }
   else {
      print "No match: |$_|\n";
   }
}
