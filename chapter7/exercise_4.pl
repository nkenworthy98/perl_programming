#!/usr/bin/perl

# 4. [8] Make a program that prints each line that has a word that is capitalized but
# not ALL capitalized. Does it match Fred but neither fred nor FRED?

chomp(@lines = <<>>);

foreach (@lines) {
  if (/\b[A-Z][^A-Z]*\b/) {
    print "$_\n";
  }
}
