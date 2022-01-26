#!/bin/bash -x


read -p "number:" num

for ((i=2;num!=1;i++))
do
	while ((num%i==0))
	do
		printf "$i "
		num=$(($num/$i))
	done

done
