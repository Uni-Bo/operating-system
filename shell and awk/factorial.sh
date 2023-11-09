read -p "Enter number to find factorial of: " n
i=1
f=1
for ((i=1; i<=n; i++))
do
	f=$((f*i))
done
echo "Factorial is $f"
