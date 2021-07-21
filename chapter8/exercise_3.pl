#!/usr/bin/perl
#
# 3. [5] Modify the program from the previous exercise so that the word ending with
# the letter a is captured into $1. Update the code to display that variable’s contents
# in single quotes, something like $1 contains 'Wilma'.

while (<>) {           # take one input line at a time
  chomp;
  if (/(\w+a)\b/) {
    print "\$1 contains '$1'\n";  # the special match vars
  } else {
    print "No match: |$_|\n";
  }
}
