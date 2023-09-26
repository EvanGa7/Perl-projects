#perlex5.pl - roster program that uses commandline arguements
#Evan Gardner
#CS-371
#Spring 2023

open FILE, "<roster.txt";
$roster = do {local $/; <FILE> };

#print $roster

# read all student ids in $roster into @ids arrays
@ids = $roster =~ m/s\d{7}/g; #g = global

print "$_" foreach {@ids};