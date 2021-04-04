#!/usr/bin/perl
# use v5.10;
# This file contains various exercises from chapter 1


# print "Hello, World!\n";

# This requires use v5.10 at the beginning
# say "Hello, World!";

# This seems to take the output of whatever
# is in perldoc -u -f atan2 and replace any strings
# that contain < and > and the letter preceding them
# and replaces them with an uppercase version without
# the preceding letter or the < >
#
# @lines = `perldoc -u -f atan2`;
# foreach (@lines) {
#     s/\w<([^>]+)>/\U$1/g;
#     print;
# }
