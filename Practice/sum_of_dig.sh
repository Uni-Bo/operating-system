#! /usr/bin/bash

read -p "Enter a number " m
s=0
if [ -n "$m" ] 
then
while ((m>0))
do
	r=$((m%10));
	#echo $r
	s=$((s+r));
	#echo "m" $m
	m=$((m/10));
done

echo $s
else
	echo "wrong input";
	exit 1;
fi

