#perlex3.pl - process a roster file and print the sorted roster
#Evan Gardner
#CS-371
#Spring 2023

while($student = <STDIN>) {
    # Parse one student record in $student into %last, $first, $email
    # ($last, $first, $email) = split /, /, $student;

    #Change the split delimiter to deal with iorregular spaces around the comma
    ($last, $first, $email) = split /\s*,\s*/, $student;
    push @roster, "$first, $last, $email";
}

foreach $student (sort @roster) {
    print $student;
}