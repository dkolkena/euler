#!/bin/bash

# Project Euler Problem 1
# https://projecteuler.net/problem=1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

total=0

for int in `seq 1 999`;
do
    if [[ $(( $int % 5 )) == 0 ]]
    then
        total=$(( $total + $int ))
    elif [[ $(( $int % 3 )) == 0 ]]
    then
        total=$(( $total + $int ))
    fi
done

echo $total