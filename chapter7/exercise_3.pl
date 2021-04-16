#!/usr/bin/perl

# 3. [6] Make a program that prints each line of its input that contains a period (.),
# ignoring other lines of input. Try it on the small text file from the previous exer‐
# cise: does it notice Mr. Slate?

chomp(@lines = <<>>);

foreach (@lines) {
  if (/\./) {
    print "$_\n";
  }
}
