#!/bin/bash -x
gain=1
loss=0
GAIN_COUNT=0
LOSS_COUNT=0
money=100

while ((1))
do
	if ((money==0))
	then
		break;
	elif ((money==200))
	then
		break;
	fi
	bet=$((RANDOM%2))

	if ((bet==gain))
	then
		money=$(($money+1))
		((GAIN_COUNT++))
	elif ((bet==loss))
	then
		money=$(($money-1))
		((LOSS_COUNT++))
	fi
done

echo no of times won $GAIN_COUNT
echo no of times lose $LOSS_COUNT

if ((money==200))
then
	echo finally won
elif ((money==0))
then
	echo finally lost
fi

	


