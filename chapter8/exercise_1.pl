#!/usr/bin/perl
#
# 1. [8] Using the pattern test program, make a pattern to match the string match. Try
# the program with the input string beforematchafter. Does the output show the
# three parts of the match in the right order?

while (<>) {           # take one input line at a time
  chomp;
  if (/match/) {
    print "Matched: |$`<$&>$'|\n";  # the special match vars
  } else {
    print "No match: |$_|\n";
  }
}
