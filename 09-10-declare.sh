#!/bin/bash
#

# -r readonly
declare -r var1=1	# Readonly variable
echo "var1 = $var1"

(( var1++ ))		# error

# -i integer
declare -i number

number=3
echo "Number = $number"

number=three
echo "Number = $number"	# Number = 0
			# Tries to evaluate string "three" as integer

n=6/3
echo "n = $n"		# n = 6/3

declare -i n
n=6/3
echo "n = $n"		# n = 2

# -a array
declare -a indices

# -f function
declare -f function_name

# -x var3
delcare -x var3

declare -x var3=373

exit 0
