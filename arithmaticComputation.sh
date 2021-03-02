#!/bin/bash -x

echo "enter the numbers for arithmetic computation"
read a b c

declare -A ArithmeticResult

result1=$(($a+$b*$c))
ArithmeticResult[1]=$result1

result2=$(($a*$b+$c))
ArithmeticResult[2]=$result2

result3=$(($a/$b+$c))
ArithmeticResult[3]=$result3

result4=$(($a%$b+$c))
ArithmeticResult[4]=$result4

i=0

for temp in ${ArithmeticResult[@]}
do
	result[$i]=$temp
	((i++))
done

echo ${result[@]}
