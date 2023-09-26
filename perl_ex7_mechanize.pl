#perl_ex7_mechanize.pl
#Evan Gardner
#CS-371
#Spring 2023

use strict;
use WWW::Mechanize;

my $url = "https://www.monmouth.edu/department-of-csse/news-events/";

my $mech = WWW::Mechanize->new();
$mech->get($url);

my $news = $mech->content;

my @headlines = $news =~ m/<strong>(.+)<\/strong>/g;

foreach my $hl (@headlines) {
	print "$hl\n";
}