#!bin/bash

if [ $# -lt 2 ]; then
	echo "Invalid input"
	exit 1

elif (( $1 < 0 || $2 < 0 )); then
	echo "Input must be greater than 0"
	exit 2
else
	for i in `seq $1`;do
	
		for j in `seq $2`;do
			result=$(($i*$j))
			echo -ne "$i*$j=$result\t"
		done
		echo ""
	
	done
fi


