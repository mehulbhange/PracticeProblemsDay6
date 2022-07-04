#!/bin/bash -x

read -p "Enter a number : " num1
read -p "Enter a number : " num2
isPrime=1
if [ $num1 -lt 2 ]
then
    num1=2
fi

for (( i=num1; i<num2; i++ ))
do
    for (( j=2; j<i; j++))
    do
        if [ $(($i%j)) -eq 0 ]
        then
            isPrime=0
            break
        fi
    done
    if [ $isPrime -eq 1 ]
    then
        echo "$i"
    else
        isPrime=1
    fi
    
done