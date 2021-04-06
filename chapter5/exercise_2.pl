#!/usr/bin/perl
#
# 2. [8] Write a program that asks the user to enter a list of strings on separate lines,
# printing each string in a right-justified, 20-character column. To be certain that
# the output is in the proper columns, print a “ruler line” of digits as well. (This is
# simply a debugging aid.) Make sure that you’re not using a 19-character column
# by mistake! For example, entering hello, good-bye should give output some
# thing like this:

print "Enter a list of strings on separate lines.\n";
print "(Press Ctrl+D when finished)\n";
chomp(@user_input = <STDIN>);

print ((1..9, 0) x 5);
print "\n";
printf(("%20s\n" x @user_input), @user_input);
