#!/usr/bin/perl
#
# 6. [5] Write a new program (not the test program!) that prints out any input line
# ending with whitespace (other than just a newline). Put a marker character at the
# end of the output so as to make the whitespace visible.

while (<<>>) {
  chomp;
  if (/(?<ws_line>\s\Z)/) { # line ends with whitespace
    print "Line ends with whitespace: $`#$+{ws_line}#\n"; # prints before and after whitespace
  }
}
