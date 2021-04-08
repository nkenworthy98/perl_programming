#!/usr/bin/perl
#
# 3. [15] Write a program to list all of the keys and values in %ENV. Print the results in
# two columns in ASCIIbetical order. For extra credit, arrange the output to verti‐
# cally align both columns. The length function can help you figure out how wide
# to make the first column. Once you get the program running, try setting some
# new environment variables and ensuring that they show up in your output.

my $key_length = &find_max_length(keys %ENV);
# my $value_length = &find_max_length(values %ENV);

# It doesn't make sense to use $value_length for myself
# because one of the corresponding values in my environment
# is well over 100 characters and causes all kinds of formatting issues.
# If I didn't have this one variable with so many characters, I should
# be able to use $value_length without a problem.
foreach my $key (sort keys %ENV) {
  # printf "%${key_length}s, %${value_length}s\n", $key, $ENV{$key};
  printf "%${key_length}s : %30s\n", $key, $ENV{$key};
}

# Determines the max length of strings from array
sub find_max_length {
  my $current_max = length shift @_;
  my @rest_of_array = @_;

  foreach my $element (@rest_of_array) {
    if ($current_max < length $element) {
      $current_max = length $element;
    }
  }
  $current_max;
}
