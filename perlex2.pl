#perlex2.pl - Output only works for words that are 7 characters or fewer in a word list
#Evan Gardner
#CS-371
#Spring 2023

while(<STDIN>) {    #STDIN would be assigned to the $_ default variable
    chomp($_);
    # if(length $_ <= 7 ) {
    #     print $_, "\n";
    # }

    #Using Regular Expression Match
    if($_ =-m/^.{1,7}$/){
        print$_, "n";
    }
}