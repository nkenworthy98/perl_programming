#!/usr/bin/perl

print "Enter in a list of numbers:\n";
@list_of_numbers = <STDIN>;
@names = qw( fred betty barney dino wilma pebbles bamm-bamm );

print "Here's are the corresponding names based on the numbers you entered:\n";
foreach $number (@list_of_numbers) {
    print "$names[ $number - 1]\n";
}
