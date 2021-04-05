#!/usr/bin/perl

# Subroutines

# Defining a subroutine
# $n = 0;
# sub marine {
#     $n += 1;
#     print "Hello, sailor number $n!\n";
# }

# # Invoking a subroutine
# &marine;
# &marine;
# &marine;
# &marine;

# Return Values
# sub sum_of_fred_and_barney {
#   print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
#   $fred + $barney;  # That's the return value
# }
# $fred   = 3;
# $barney = 4;
# $wilma  = &sum_of_fred_and_barney;      # $wilma gets 7
# print "\$wilma is $wilma.\n";
# $betty  = 3 * &sum_of_fred_and_barney;  # $betty gets 21
# print "\$betty is $betty.\n";

# Arguments

# Private Variables in Subroutines
# sub max {
#   my($m, $n) = @_;       # new, private variables for this block
#   if ($m > $n) { $m } else { $n }
# }
# $fred = 3;
# $wilma = 4;
# print &max($fred, $wilma);

# Variable Length Parameter Lists
# $maximum = &max(3, 5, 10, 4, 6);
# sub max {
#   my($max_so_far) = shift @_;  # the first one is the largest yet seen
#   print "Here's the shift: $max_so_far\n";
#   print "Here's the array: @_\n";
#   foreach (@_) {               # look at the remaining arguments
#     if ($_ > $max_so_far) {  # could this one be bigger yet?
#       $max_so_far = $_;
#     }
#   }
#   $max_so_far;
# }
# print "Here's the maximum value: $maximum\n";

# Notes on Lexical (my) Variables
# foreach (1..10) {
#   my($square) = $_ * $_;  # private variable in this loop
#   print "$_ squared is $square.\n";
# }

# Strict Pragma
# use v5.12; # loads strict for you
# use strict;

# Nonscalar Return Values
# sub list_from_fred_to_barney {
#   if ($fred < $barney) {
#     # Count upwards from $fred to $barney
#     $fred..$barney;
#   } else {
#     # Count downwards from $fred to $barney
#     reverse $barney..$fred;
#   }
# }
# $fred = 11;
# $barney = 6;
# @c = &list_from_fred_to_barney; # @c gets (11, 10, 9, 8, 7, 6)
# print @c;

# Persistent, Private Variables
# use v5.10;
# running_sum( 5, 6 );
# running_sum( 1..3 );
# running_sum( 4 );
# sub running_sum {
#   state $sum = 0;
#   state @numbers;
#   foreach my $number ( @_ ) {
#     push @numbers, $number;
#     $sum += $number;
# }
# say "The sum of (@numbers) is $sum";
# }

# Subroutine Signatures
# use v5.20;
# use feature qw(signatures);
# no warnings qw(experimental::signatures);

# sub max ( $m, $n ) {
#   if ($m > $n) { $m } else { $n }
# }

# print "The max is: " . &max(20, 30) . "\n";
