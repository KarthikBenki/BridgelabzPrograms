#!/bin/bash -x

for ((i=1;i<=100;i++))
do
	for ((j=i,rev=0;j!=0;j=j/10))
	do
		r=$(($j%10))
		rev=$(($rev*10+r))
		if ((rev == i ))
		then
			if ((rev > 10))
			then
				printf "$rev "
			fi
		fi
	done
done
printf "\n"
