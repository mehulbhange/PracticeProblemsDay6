#!/bin/bash -x

num=$1
power=1

n=1
while [[ $power -lt 256 && $n -le $num ]]
do
    ((n++))
    temp=$(($power*2))
    echo $temp
    power=$(($temp))
done