#!/usr/bin/perl

# 5. [8] Make a program that prints each line that has two of the same nonwhitespace
# characters next to each other. It should match lines that contain words such as
# Mississippi, Bamm-Bamm, or llama.

chomp(@lines = <<>>);

foreach (@lines) {
  if (/(.)\g{1}/) {
    print "$_\n";
  }
}
