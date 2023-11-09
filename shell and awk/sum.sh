# /usr/bin/bash
regex="^-?[0-9]+$"
if [[ $1=~$regex ]]
then 
	n=$1
	sum=0
	while ((n>0))
	do
		rem=$((n%10))
		sum=$((sum+rem))
		n=$((n/10))
	done
	echo "Sum of digit is: $sum"
else
echo "Not a number"
exit 0
fi
