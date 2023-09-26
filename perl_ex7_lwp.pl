#perl_ex7_lwp.pl
#Evan Gardner
#CS-371
#Spring 2023

use strict;
use LWP::Simple;

my $news = get("https://www.monmouth.edu/department-of-csse/news-events/");

my @headlines = $news =~ m/<strong>(.+)<\/strong>/g;

foreach my $hl (@headlines) {
	print "$hl\n";
}