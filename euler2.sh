#!/bin/bash

# Project Euler Problem 2
# https://projecteuler.net/problem=2

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

max=34 # The 34th iteration of the Fibonacci sequence is the last one under 4 million.

a=0
b=1
i=0
total=0

while [ $i -lt $max ]
do
	if [[ $(( $a % 2 )) == 0 ]]
	then
		total=$(( $total + $a ))
	fi

	printf "%d\n" $a
	let sum=$a+$b
	let a=$b
	let b=$sum
	let i=$i+1
done

printf "Sum of all evens: %d\n" $total