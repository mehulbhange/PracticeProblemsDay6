#!/bin/bash -x

read -p "Enter a number : " num
isPrime=1
for (( i=2; i<num; i++ ))
do
    if [ $(($num%i)) -eq 0 ]
    then
        isPrime=0
        break
    fi
done

if [ $isPrime -eq 1 ]
then
    echo "$num is prime number"
else
    echo "$num is not prime number"
fi