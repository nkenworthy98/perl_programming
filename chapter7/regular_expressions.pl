#!/usr/bin/perl

# Regular Expressions

# Sequences
# $_ = "Here's some text";
# if (/ome/) {
#   print "I found a match\n";
# }

# Practice Some Patterns
# while( <STDIN> ) {
#   chomp;
#   if (/grep/) {
#     print "\tMatches\n";
#   }
#   else {
#     print "\tDoesn't match\n";
#   }
# }

# The Wildcard
# $_ = "yabba dabba doo";
# if (/ab.a/) {
#   print "It matched!\n";
# }

# Quantifiers
# while (<STDIN>) {
#   if (/Bamm-?bamm/) {
#     print "It matched!\n";
#   }
#   if (/Bamm-*bamm/) {
#     print "It matched!\n";
#   }
# }

# $_ = 'Bamm      bamm';
# if (/Bamm +bamm/) {
#   print "It matched!\n";
# }
# if (/ab{3}a/) {
#   print "It matched!\n";
# }

# Grouping in Patterns
# while (<STDIN>) {
#   if (/(fred)+/) {
#     print "It matched!\n";
#   }
# }
# $_ = "abba";
# if (/(.)\1/) {  # matches 'bb'
#   print "It matched same character next to itself!\n";
# }
# $_ = "yabba dabba doo";
# if (/y(....) d\1/) {
#   print "It matched the same after y and d!\n";
# }
# $_ = "aa11bb";
# if (/(.)\g{1}11/) {
#   print "It matched!\n";
# }

# Alternatives
# foreach ( qw(fred betty barney dino) ) {
#   if ( /fred|barney/ ) {
#     print "$_ matched\n";
#   }
# }
