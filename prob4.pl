#prob4.pl - write a program to correct the delmiting input in the roster_raw.txt file 
# Evan Gardner
# CS-371
# Spring 2023

use strict;
use warnings;

# Read the input from standard input
while (my $line = <STDIN>) {

# Perform the regular expression search and replace to correct the delimiting
$line =~ s/(\w+)\s*,\s*(\w+)\s*,\s*(\w+@\w+\.\w+)/$1, $2, $3/;

# Print the corrected line
print "$line\n";
}