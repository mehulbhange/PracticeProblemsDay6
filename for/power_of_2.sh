#!/bin/bash -x

n=$1
power=1
for (( cnt=1; cnt<=n; cnt++ ))
do
    echo $(( $power*2 ))
    power=$(( $power*2))
done
