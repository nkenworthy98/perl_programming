#!/usr/bin/perl

print "Enter in a list of strings:\n";
print "(Press Ctrl+D When you're done)\n";
chomp(@string_list = <STDIN>);
@sorted_list = sort @string_list;

print "Here's the list printed all on one line:\n";
print @sorted_list;
print "\n";

print "Here's the list printed all separates lines:\n";
foreach $string (@sorted_list) {
    print "$string\n";
}
