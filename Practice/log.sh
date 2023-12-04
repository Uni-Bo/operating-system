#! /usr/bin/bash

read -p "Enter the term to find the natural log of " n

if [ -n "$n" ]
then
	a=$(echo "l($n)"|bc -l)
	b=$(echo "l(10)"|bc -l)
	echo "scale=2;$a/$b"|bc -l ;

else
	echo Wrong Input
	exit 1;
fi
