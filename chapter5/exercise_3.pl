#!/usr/bin/perl
#
# 3. [8] Modify the previous program to let the user choose the column width, so that
# entering 30, hello, good-bye (on separate lines) would put the strings at the 30th
# column. (Hint: see “Interpolation of Scalar Variables into Strings” on page 32,
# about controlling variable interpolation.) For extra credit, make the ruler line
# longer when the selected width is larger

print "What do you want the column width to be?\n";
chomp($num_columns = <STDIN>);

print "Enter a list of strings on separate lines.\n";
print "(Press Ctrl+D when finished)\n";
chomp(@user_input = <STDIN>);

print create_ruler($num_columns);
print "\n";
printf(("%${num_columns}s\n" x @user_input), @user_input);

sub create_ruler {
  my $columns = shift @_;
  my @new_ruler;
  my $count = 0;
  while (@new_ruler < $columns) {
    @new_ruler = ((1..9, 0) x $count);
    $count += 1;
  }
  @new_ruler;
}
