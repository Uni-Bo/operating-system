#! /usr/bin/bash

read -a arr
l=$((${#arr[@]}+1))

for((i=0;i<l;i++))
do
	p=$i
	min=${arr[i]}
	for((j=i;j<l;j++))
	do
		if ((arr[j]>min))
		then
			min=${arr[j]}
			p=$j
		fi
	done
	temp=${arr[i]}
	arr[$i]=${arr[p]}
	arr[$p]=$temp
done
echo "Sorted arr: ${arr[*]}"
	
