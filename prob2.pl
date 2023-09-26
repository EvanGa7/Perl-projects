#prob2.pl - completing perl exercise 1 again only using the "use strict" pragrma (Count Word length occurences in word list)
# Evan Gardner
# CS-371
# Spring 2023

use strict;
use warnings;

#Read Each line from input through STDIN
my @wordlength =();
while (my $word = <STDIN>) {
    #Get the length of each word
    chomp ($word);  #remove the trailing \n from each $word
    my $length = length($word);

    #Increment the correct word length array element using $length
    $wordlength[$length]++; #@wordlength array is created on the fly
}

#After the loop, print the @wordlength array elements
print "Word Length", "\t", "Occurences", "\n\n";

for (my $i = 0; $i < @wordlength; $i++) {
    # print $i, "\t\t", $wordlength[$i], "\n";

    # alternative code to check for non exsistent array elements
    if ($wordlength[$i] ) {
        print $i, "\t\t", $wordlength[$i], "\n";
    }
    else {
        print $i, "\t\t", 0, "\n";
    }
}