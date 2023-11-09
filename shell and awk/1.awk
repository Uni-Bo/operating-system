#! /usr/bin/awk -f

BEGIN {if(ARGC<2){print too few arguments;exit 0};print hello; FS=" ";print "Enter the subject for which you want your max" getline ch<"-"}

NR!=1{ n=ch+1;if($n>max){max=$n;name=$1}}

END {printf "\nname is %s marks is %d\n",name,max}
