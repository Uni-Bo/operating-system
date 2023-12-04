#! /usr/bin/bash

read -p "Enter number to find factorial " n
f=1
for ((i=1 ; i<=n ; i++))
do
	f=$((f*i))
done

echo $f
