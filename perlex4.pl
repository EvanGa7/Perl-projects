#perlex4.pl - populate a hash with data from a roster
#Evan Gardner
#CS-371
#Spring 2023

while($student = <STDIN>) {
    chomp($student);
    ($last, $first, $email) = split /\s*,\s*/, $student;

    # #Insert student into %roster hash, with key=$id
    # #must get $id from $email first
    # ($id, $domain) = split /@/, $email;

    # # #use regex substitution to get that
    # $email =~ s/@monmouth\.edu//; #delete the monmouth.edu in $email
    # $id = $email;

    # # #use regex group matching
    # # #in this case match operation is not boolean but returns a list of matches, so we need to out
    # ($id) = $email =~ m/s(\d{7})/; #also works s(0-9){7}

    # #use rege groups in substitution 
    # #replace the enture email address with just the id in $1
    $email =~ s/(s\d{7}).*/$1/;
    $id = $email;

    # #add key value pair to the %roster hash
    $roster{$id} = "$last, $first";
}

#print each key value pairs in %roster
foreach $id (sort keys %roster) {
    print "$id, $roster{$id}\n";
}