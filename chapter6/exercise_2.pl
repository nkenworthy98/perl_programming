#!/usr/bin/perl
#
# 2. [15] Write a program that reads a series of words (with one word per line) until
# end-of-input, then prints a summary of how many times each word was seen.
# (Hint: remember that when an undefined value is used as if it were a number,
# Perl automatically converts it to 0. It may help to look back at the earlier exercise
# that kept a running total.) So, if the input words were fred, barney, fred, dino,
# wilma, fred (all on separate lines), the output should tell us that fred was seen 3
# times. For extra credit, sort the summary words in code point order in the out‐
# put.

print "Enter in a series of words (one word per line).\n";
print "(Press Ctrl-D when finished)\n";

chomp(@words = <STDIN>);

my %words_hash;

# Initialize hash by setting every value to 0
foreach $word (@words) {
  $words_hash{$word} = 0;
}

# Increment keys by 1 if the key already exists
foreach my $word (@words) {
  if (exists $words_hash{$word} ) {
    $words_hash{$word} += 1;
  }
}

# Print the words and number of times they were seen
foreach my $word (sort keys %words_hash) {
  print "$word was seen $words_hash{$word} time(s)\n";
}
