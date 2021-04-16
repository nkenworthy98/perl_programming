#!/usr/bin/perl

# 6. [8] Extra credit exercise: write a program that prints out any input line that
# mentions both wilma and fred

chomp(@lines = <<>>);

foreach (@lines) {
  if (/([Ww]ilma.*[Ff]red)|([Ff]red.*[Ww]ilma)/) {
    print "$_\n";
  }
}
