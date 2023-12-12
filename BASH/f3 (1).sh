#!/bin/bash
# SWAPPING NUMBERS (WITH TEMP VARIABLE)

a=10
b=20
echo "Before a = $a b= $b "
temp=$a
a=$b
b=$temp
echo "After  a = $a b= $b "

# SWAPPING NUMBERS (WITHOUT TEMP VARIABLE)

a=$((a+b))
b=$((a-b))
a=$((a-b))
echo "after 2n swap a= $a b =$b"

# PRINT FIRST N NATURAL NUMBERS 

read -p "Enter the number until which you want to print : " n
for((i>0 ; i<=n ; i++))
do
	echo $i
done
# FIBONACI SERIES
a=0
b=1
read -p "Enter the number until which you want to print : " n
for (( i=0; i<n; i++ ))
do
	c=$((a+b))
	echo $c
	a=$b
	b=$c
done

# FACTORIAL 
read -p "Enter the numbeR U WANT TO FIND FACTORIAL : " n
fact=1
for (( i=1 ; i<=n ; i++ ))
do
	fact=$((fact*i))
done

echo $fact

#ARMSTRONG NUMBER
read -p "Enter A 3 digit number : " n
h=$(( n/100 ))
t=$(( (n-(h*100))/10 ))
o=$(( (n-(h*100)-(t*10)) ))
cube=$(( (h*h*h)+(t*t*t)+(o*o*o) ))
echo $h $t $o $cube
if [[ $n == $cube ]]
then
	echo "$n is an Armstrong number"
else
	echo "$n is not an Armstrong number"
fi
