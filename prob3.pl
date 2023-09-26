#prob3.pl - write a program to find the words in english.sorted that contain more than one capital letter
# Evan Gardner
# CS-371
# Spring 2023

use strict;

# Initialize an array to store the words with multiple uppercase letters
my @multiupcase;

# Read each line from standard input
while (my $line = <STDIN>) {
    # Remove the trailing newline character
    chomp($line);

    # Match the line against the regular expression pattern
    if ($line =~ /[A-Z].*[A-Z]/) {
        # /[A-Z]/
        push(@multiupcase, $line);
    }
}

# Print each word from @multiupcase on a new line
print "@multiupcase";