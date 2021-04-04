#!/usr/bin/perl

print "Enter in a number\n";
chomp($first_number = <STDIN>);
print "Enter in another number\n";
chomp($second_number = <STDIN>);
$product = $first_number * $second_number;
print "Here's the product of the two numbers you entered in: $product\n";
