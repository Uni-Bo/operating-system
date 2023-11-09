sum=0
n=$#
for (( i=0; i<n; i++ ))
do 
	echo "$sum + $1"
	sum=$((sum+$1))
	shift
done
echo "Sum is $sum"
