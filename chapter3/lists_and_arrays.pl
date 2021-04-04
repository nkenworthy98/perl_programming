#!/usr/bin/perl

# Accessing elements of an array
# $fred[0] = 23_123;
# $fred = "This is the fred string";
# print $fred[0] . "\n";
# print $fred . "\n";

# Special Array Indices
# $rocks[0] = "s";
# $rocks[1] = "o";
# $rocks[2] = "m";
# $rocks[3] = "e";
# $rocks[99] = "!";
# $counter = 0;
# while ($counter < 100) {
#     print $rocks[ $counter ] . "\n";
#     $counter += 1;
# }

# List Literals
# @fred = 1..1000;
# foreach $number (@fred) {
#     print $number . "\n";
# }
# foreach $number (1..1000) {
#     print $number . "\n";
# }

# List Assignment
# ($string1, $string2) = qw( rocks steaks );
# print "First string: $string1\n";
# print "Second string: $string2\n";

# The pop and push Operators
# @array = 5..9;
# print pop(@array);
# push(@array, 1..10);
# while (@array) {
#     print pop(@array) . "\n";
# }

# The shift and unshift operators
# @array = qw( one two three four five );
# print shift(@array);
# unshift (@array, "one");

# The splice operator
# @array = qw( pebbles dino wine purple );
# @removed = splice(@array, 1, 0, @array);
# print " @removed ";

# Interpolating arrays into strings
# @rocks = qw( flintstone slate rubble );
# print "quarts @rocks limestone\n";

# The foreach control structure
# foreach $rock (qw( bedrock slate lava )) {
#     print "One rock is $rock.\n";
# }

# @rocks = qw/ bedrock slate lava /;
# foreach $rock (@rocks) {
#     $rock = "\t$rock\n";
# }
# print "The rocks are: \n", @rocks;

# Perl's Favorite Default: $_
# foreach (1..1000) {
#     print "I can count to $_!\n";
# }

# $_ = "Yabba dabba doo\n";
# print;

# The Reverse Operator
# @wilma = reverse(7..49);
# foreach $number (@wilma) {
#     $number .= "\n";
# }
# print @wilma;

# @fred = 1..10;
# @fred = reverse @fred;
# print @fred;

# The Sort Operator
# @rocks = qw( bedrock slate rubble granite );
# print sort(@rocks);
# @numbers = 1..1000;
# foreach $number (@numbers) {
#     $number .= "\n";
# }
# @reverse = reverse(@numbers);
# print @reverse;
# @sorted = sort(@reverse);
# print @sorted;

# The each operator
# I don't need it, but some versions will require
# require v5.12; at the beginning
# @rocks = qw/ bedrock slate rubble granite /;
# while( ( $index, $value ) = each @rocks ) {
#     print "$index: $value\n";
# }

# Scalar and List Context
# @people = qw( fred barney betty );
# @sorted = sort @people;  # list context: barney, betty, fred
# $number = 42 + @people;  # scalar context: 42 + 3 gives 45
# print @sorted;
# print $number;

# Using List-Producing Expressions in Scalar Context

# Using Scalar-Producing Expressions in List Context
# To clear an array
# @array = ( );

# <STDIN> in List Context
# print "Enter in several lines of text:\n";
# chomp(@lines= <STDIN>);
# print "Here's what you entered in: @lines\n";
