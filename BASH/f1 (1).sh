#!/bin/bash
#this is a command

# VARIABLES :

echo Hello World # this is also a command
echo our shell name $BASH # bash or shell name
echo our shell version $BASH_VERSION # bash version
echo the home directory $HOME # home directory
echo the present working directory $PWD #present working directory

# USER DEFINED VARIABLES :

name=mark # name is a variable
10val=10 # variable name should not start with number
echo the name is $name

# INPUT FROM THE USER :

#getting one input
echo Enter Name : 
read name
echo Entered Name : $name
#getting multiplpe inputs
echo Enter Names : 
read name1 name2 name3
echo Entered Names : $name1 $name2

read -p "Usuername :" name1 #TO READ IN THE SAME LINE
read -sp "Password :" name2  #TO READ A PASSWORD
echo Entered Names : $name1 $name2

# reading from an array
echo "Enter names :"
read -a Name
echo "Names : ${Name[0]} ${Name[1]} ${Name[0]} ${Name[1]} "

# If Statement (-eq ; -ne ; -gt ; -ge ; -lt ; -le)[Integer Comparision]

a=10
if [ $a -eq 10 ]
then
    echo "condition is true"
fi

# If Else Statement (= ; == ; != )[String Comparision]

a=g
if [ $a != h ]
then
    echo "condition is true"
else
    echo "condition is false"
fi

# If Elif Else Statement (< ; > ; -z )[String Comparision]

a=g
if [[ $a < h ]]
then 
    echo "var a is smaller than h"
elif [[ $a > h ]]
then
    echo "var a is greater than h"
else
    echo "condition is false"
fi

#AND(&& ; -a) OPERATOR

a=10
if [ $a -gt 19 ] && [ $a -lt 50 ]
then
    echo valid age
else
    echo invalid age
fi

a=10
if [ $a -gt 19 -a $a -lt 50 ]
then
    echo valid age
else
    echo invalid age
fi

a=10
if [[ $a -gt 19 && $a -lt 50 ]]
then
    echo valid age
else
    echo invalid age
fi

#OR(|| ; -o) OPERATOR

a=10
if [ $a -gt 19 ] || [ $a -lt 50 ]
then
    echo valid age
else
    echo invalid age
fi

a=10
if [ $a -gt 19 -o $a -lt 50 ]
then
    echo valid age
else
    echo invalid age
fi

a=10
if [[ $a -gt 19 || $a -lt 50 ]]
then
    echo valid age
else
    echo invalid age
fi

#ARITHMETIC OPERATIONS

n1=24
n2=25
n3=$((n1+n2))
echo $((n1+n2))
echo $((n1-n2))
echo $((n1*n2))
echo $((n1/n2))
echo $((n1%n2))  
echo $n3

echo "$n1 + $n2" | bc
echo "$n1 - $n2" | bc
echo "$n1 * $n2" | bc
echo "$n1 / $n2" | bc
echo "scale = 2; $n1 / $n2 " | bc
echo "scale = 2 ; sqrt($n2)"| bc
echo "$n1 ^ $n2" | bc

# ARRAYS 

#os =("ub" "hl" "bvccc")
#echo "${os[0]}"

#WHILE LOOP

n=2
while [ $n -le 10 ]
do
    echo $n
    n=$(( n+1 ))
done

#FOR LOOP

for i in 1 2 3 4 5
do
    echo $i
done

for i in {0..10}
do
    echo $i
done

for i in {0..10..2}
do
    echo $i
done

for (( i=0; i<5; i++))
do
    echo $i
done

# FUNCTIONS

function name(){
    echo "Hello"
}
function print () {
    echo $1 $2 $3
}
quit () {
    exit
}

print Helo World Again hi
name
quit
