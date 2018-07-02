# Bitwise operators behave differently if the left-value operand
# is a number or a string.
my $number = 0x80 ^ 0x20;
my $mixed  = "P"  ^ 0x20;
my $string = "P"  ^ " ";

print <<"HERE";
Number is $number
Mixed is $mixed
String is $string
HERE
