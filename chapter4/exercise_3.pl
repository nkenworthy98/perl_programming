#!/usr/bin/perl
use v5.10;
# use v5.10 is required for "state" in the greet function
#
# 3. [18] Extra credit exercise: write a subroutine, called &above_average, which takes
# a list of numbers and returns the ones above the average (mean). (Hint: make
# another subroutine that calculates the average by dividing the total by the number of
# items.)

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub above_average {
    my $average = calculate_average(@_);
    my (@above_average) = ( );
    foreach $number (@_) {
        if ($number > $average) {
            push(@above_average, $number);
        }
    }
    @above_average;
}

sub calculate_average {
    my $num_of_elements = @_;
    my $sum = 0;
    foreach my $number (@_) {
        $sum += $number;
    }
    $sum / $num_of_elements;
}

# [10] Write a subroutine named greet that welcomes the person you name by
# telling them the name of the last person greeted

greet ( "Fred" );
greet ( "Barney" );

sub greet {
    # first argument is the name
    my $name = $_[0];
    state $previous_name;

    # This checks to see if previous_name doesn't have an existing value,
    # which would mean that it's the first time the function is being called
    # in that particular program
    if (! $previous_name) {
        $previous_name = $name;
        print "Hi, $name You are the first one here!\n";
    } else {
        print "Hi, $name. $previous_name is also here!\n";
    }
}
