#!/bin/bash
# Random

MAXCOUNT=10
count=1

number=$RANDOM

# In range
RANGE=500
let "number %= $RANGE"

# Binary

number=$RANDOM
let "number >>= 14"
if [ "$number" -eq 1 ]
then
	echo "TRUE"
else
	echo "FALSE"
fi

# Dies rolling

die1=0
die2=0

let "die1 = $RANDOM % 6 + 1"
let "die2 = $RANDOM % 6 + 1"

# Cards

Suits="Clubs
Diamonds
Hearts
Spades"

Denominations="Ace
2
3
4
5
6
7
8
9
10
Jack
Queen
King"

suite=($Suites)		# Read into array variable
denomination=($Denominations)

num_suites=${#suite[*]}
num_denominations=${#denomination[*]}

echo "$(denomination[$((RANDOM%num_denominations))])"

exit 0

