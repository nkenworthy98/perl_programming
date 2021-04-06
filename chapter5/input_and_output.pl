#!/usr/bin/perl

# Input from Standard Output
# while (defined($line = <STDIN>)) {
#     print "I saw $line";
# }
# another way to write this
# while (<STDIN>) {
#     print "I saw $_";
# }

# Input from the Diamond Operator
# to run this code below, type:
# perl input_and_output.pl fred.txt
# while (defined($line = <>)) {
#     chomp($line);
#     print "It was $line that I saw!\n";
# }
# another way to write this
# while (<>) {
#     chomp;
#     print "It was $_ that I saw!\n";
# }

# The Double Diamond
# generally recommended to use <<>> instead of <>
# because of potential issue involving "pipe open"
# while (<<>>) {
#     chomp;
#     print "It was $_ that I saw!\n";
# }

# Output to standard output
# @array = qw( one two three four five );
# print @array;
# print "\nvs.\n";
# print "@array";

# Formatted Output with printf

# Arrays and printf
# my @items = qw( wilma dino pebbles );
# my $format = "The items are:\n" . ("%10s\n" x @items);
# ## print "the format is >>$format<<\n"; # for debugging
# printf $format, @items;
# another way to write the format/printf statements
# printf "The items are:\n".("%10s\n" x @items), @items;

# Opening a filehandle
# open CONFIG, 'dino';
# open CONFIG, '<dino';
# open BEDROCK, '>fred';
# open LOG, '>>logfile'; # this will apend to the file
# Below is the recommended way of doing this:
# open CONFIG, '<', 'dino';
# open BEDROCK, '>', $file_name;
# open LOG, '>>', &logfile_name();

# Closing a filehandle
# close BEDROCK;

# Automatically die-ing
# use autodie;
# open LOG, '>>', 'logfile';

# Changing the Default Output Filehandle
