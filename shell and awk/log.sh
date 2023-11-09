#! /usr/bin/bash

if [[ $#<1 ]]
then 	
	echo "Too few arguments"
	exit 0
fi

a=$(echo "l($1)"|bc -l)
b=$(echo "l(10)"|bc -l)
echo "scale=2;$a/$b"|bc -l

