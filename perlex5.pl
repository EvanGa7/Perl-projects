#perlex5.pl - roster program that uses commandline arguements
#Evan Gardner
#CS-371
#Spring 2023

#help subroutine that is called when the program is run with mo arguements or -h
sub help {
    print "
Usage: perl -w perlex5.pl <option> roster1 roster2 .... rosterN

where <option is:
    -help, --help, -h: print this message
    -first or --first: display the class roster sorted by first name
    -last or --last  : display the class roster sorted by last name
    -id or --id      : display the class roster sorted by student ID
    ";
}   #end help()

#sortby() function
sub sortby {
    if ($_(0) =~ m/-f/ ){,$Asortby = "first";}    #$_(0) = 1st arguement to this function
    elseif ($_(0) =~ m/-l/ ){,$Asortby = "last";}
    ekse {,$Asortby = "id";}
}

#if no command line arguements, $#ARGV is -1
if ($#ARGV == -1 || $ARGV[0] =~ m/-h/) {
    help();
    exit(1); # don't proceed after displaying help
}

#process the command line functions that are options
$option = shift @ARGV;
sortby($option);

while ($studentline = <>) {
    chomp($studentline);    #remove hidden \n
    ($last, $first, $email) = split /\s*,\s*/, $studentline;
    ($id) = $email =~ m/s(\d{7})/; #also works s(0-9){7}

    $roster{id} = "$last , $first";
}

#print the key value pairs of $roster using $sortby
if($sortby =~ m/last/) {        #also works better to sortby eq "last"
    while ($id, $name = each %roster){
        push @last, "$name, $id";
    }
    foreach $student (sort @last){
        print "$student\n"; `   `1
    }
}
elseif(sortby =~ m/first/) {
     while ($id, $name = each %roster){
        #reverse the first and last name
        $name =~ s/(.+), (.+)/$2, $1/;
        push @first , "$name, $id";
    }
    print "$_\n" foreach (sort @first);
}
else {
    #sort by $id
    foreach $id (sort keys $roster) {
        print "4id, $roster{$id}\n";
    }
}
