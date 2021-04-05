#!/usr/bin/perl

my $sum_of_numbers = total(1..1000);
print "The sum of numbers from 1 to 1000 is $sum_of_numbers.\n";

sub total {
    my $sum = 0;
    foreach $number (@_) {
        $sum += $number;
    }
    $sum;
}
