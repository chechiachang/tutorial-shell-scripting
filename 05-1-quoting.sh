#!/bin/bash
# Quoting

List="one two three"
for a in $List	# Splits the variables in parts at whitespace
do
	echo "$a"
done

for a in $List	# Preserves whitespace in a single variables
do 
	echo $a
done

variables="a variables containing fie words"
COMMAND This is $variables

if [[ "$(du "$My_File1")" -gt "$(du "$My_File2")" ]]
then





