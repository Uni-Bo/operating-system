
read -p "Enter user name: " name
n=0
n=$(grep -c "^$name:" /etc/passwd)
echo $n
if ((n==1))
then 
	echo "user found"
else
	echo "user not found"
fi
