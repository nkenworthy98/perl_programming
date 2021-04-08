#!/usr/bin/perl
#
# 1. [7] Write a program that will ask the user for a given name and report the corre‐
# sponding family name. Use the names of people you know, or (if you spend so
# much time on the computer that you don’t know any actual people) use the following table

print "Enter in a series of names:\n";
print "(Press Ctrl-D when finished)\n";
chomp(my @names = <STDIN>);

my %family_names=(
  'fred' => 'flintstone',
  'barney' => 'rubble',
  'wilma' => 'flintstone',
);

foreach my $name (@names) {
  if ($family_names{$name}) {
    print "$name\'s family name is $family_names{$name}\n";
  } else {
    print "$name\'s family name is unknown\n";
  }
}
