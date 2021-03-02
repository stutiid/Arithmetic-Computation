#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
read a b c

declare -A ArithmeticResult

result1=$(($a+$b*$c))
ArithmeticResult[R1]=$result1

result2=$(($a*$b+$c))
ArithmeticResult[R2]=$result2

result3=$(($a/$b+$c))
ArithmeticResult[R3]=$result3

result4=$(($a%$b+$c))
ArithmeticResult[R4]=$result4

i=0

for temp in ${ArithmeticResult[@]}
do
	result[$i]=$temp
	((i++))
done

n=4-1
for ((i=0; i<$n; i++))
do
	for ((j=0; j<$n-$i; j++))
	do
		if [ ${result[$j]} -gt ${result[$j+1]} ]
		then
			temp=${result[$j]}
			result[$j]=${result[$j+1]}
			result[$j+1]=$temp
		fi
	done
done
echo ${result[@]}
