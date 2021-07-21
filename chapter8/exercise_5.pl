#!/usr/bin/perl
#
# 5. [5] Extra credit exercise: modify the program from the previous exercise so that
# immediately following the word ending in a it will also capture up-to-five charac‐
# ters (if there are that many characters, of course) in a separate capture variable.
# Update the code to display both capture variables. For example, if the input string
# says I saw Wilma yesterday, the up-to-five characters are “ yest” (with the
# leading space). If the input is I, Wilma!, the extra capture should have just one
# character. Does your pattern still match just plain wilma?

while (<>) {           # take one input line at a time
  chomp;
  if (/(?<word>\w+a)\b(?<follow_five>.{,5})/) { # follow_five can have 0 up to 5 chars
    print "'word' contains '$+{word}'\n";
    print "\tThe following 5 characters are: '$+{follow_five}'\n";
  }
}
