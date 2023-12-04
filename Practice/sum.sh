#! /usr/bin/bash

#echo $#
#echo $1
echo $@
sum=0
if (($#==0))
then
	echo "Too little argument"
fi
n=$#
for ((i=0 ; i<n ; i++))
do
	sum=$((sum+$1))
	shift
done

echo "Sum= $sum"
