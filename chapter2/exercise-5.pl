#!/usr/bin/perl

print "Enter in a string\n";
$user_string = <STDIN>;
print "Enter in a number\n";
chomp($number = <STDIN>);
print "Here's your string printed $number times.\n";
print $user_string x $number;
