#!/usr/bin/perl
#
# 2. [7] Using the pattern test program, make a pattern that matches if any word (in
# the \w sense of word) ends with the letter a. Does it match wilma but not barney?
# Does it match Mrs. Wilma Flintstone? What about wilma&fred? Try it on the
# sample text file from the Exercises in Chapter 7 (and add these test strings if they
# weren’t already in there).

while (<>) {           # take one input line at a time
  chomp;
  if (/(\w+a\b)/) {
    print "Matched: |$`<$&>$'|\n";  # the special match vars
  } else {
    print "No match: |$_|\n";
  }
}
