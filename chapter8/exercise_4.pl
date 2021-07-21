#!/usr/bin/perl
#
# 4. [5] Modify the program from the previous exercise to use named captures
# instead of relying on $1. Update the code to display that label name, something
# like 'word' contains 'Wilma'.

while (<>) {           # take one input line at a time
  chomp;
  if (/(?<word>\w+a)\b/) {
    print "'word' contains '$+{word}'\n";  # the special match vars
  }
}
