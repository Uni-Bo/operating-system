#! /usr/bin/bash

read -p "Enter a year to check if it is leap or not " yr

if (( yr%4==0))
then
	echo "Leap year"
else
	echo "Not Leap year"
fi
