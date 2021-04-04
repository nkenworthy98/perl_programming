#!/usr/bin/perl

$pi = 3.141592654;

print "Enter in a radius.\n";
chomp($radius = <STDIN>);

if ($radius < 0) {
    $radius = 0;
}

print "Calcuating circumference of circle with radius $radius ...\n";
$circumference = 2 * $pi * $radius;
print "Here's the circumference: $circumference\n";
