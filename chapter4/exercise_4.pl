#!/usr/bin/perl
use v5.10;
# 4. [10] Modify the previous program to tell each new person
# the names of all the people it has previously greeted

greet ( "Fred" );
greet ( "Barney" );
greet ( "Wilma" );
greet ( "Betty" );

sub greet {
    # first argument is the name
    my $name = $_[0];
    state @previous_names;

    # This checks to see if previous_names doesn't have an existing value,
    # which would mean that it's the first time the function is being called
    # in that particular program
    if (! @previous_names) {
        print "Hi, $name. You are the first one here!\n";
    } else {
        print "Hi, $name. I've seen @previous_names\n";
    }
    push(@previous_names, $name);
}
