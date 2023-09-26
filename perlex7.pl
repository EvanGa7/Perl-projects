#perlex7.pl - parse data from html
#Evan Gardner
#CS-371
#Spring 2023

use strict;

open FILE, "<csse_news.html";
my $news = do {local $/; <FILE>};   #$news is a simple string containing the html

#parse out all of the headlines in $news into @headlines 
my @headlines = $news =~ m/<strong>(.+)<\/strong>/g;

# print out headlines
foreach my $h1 (@headlines) {
    print "$h1\n"
}

#read all anchor names into @anames array
my @anames = $news =~ m /<a class="anchorMargin" name="(.+)">/g;

foreach my $an (@anames) {
    print "$an\n";
}

print "Headlines: ", ($#headlines + 1), "\n";
print "Ancho names: ", ($#anames + 1), "\n";