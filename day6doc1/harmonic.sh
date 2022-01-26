#! /bin/bash -x

read -p "number" n

sum=0
for ((i=1;i<=n;i++))
do
	if ((i<n))
	then
		echo "1/$i +"
	fi

	if ((i==n))
	then
		echo "1/$i"
	fi
	add=`echo 1/$i | bc -l`
done
