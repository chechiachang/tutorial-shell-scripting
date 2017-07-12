#!/bin/bash
# Special char tricks

initial=( `cat "$startfile" | sed -e '/#/d' | tr -d '\n' |\
# Comment
	sed -e 's/\./\. /g' -e 's/_/_ /g' )
# Comment

if [ -x "$filename" ]; then 
	echo "File $filename exists."; cp $filename $filename.bak
else
	echo "File $filename not found."; touch $filename
fi; echo "File test complete"

# Case 
case "$variable" in
	abc)  echo "\$variable = abc";;
	xyz)  echo "\$variable = xyz";;
esac

# All evaluated, but only last one return
let "t2 = ((a = 9, 15 / 3))"
# a=9, t2=5

# Placeholder
if [...]
then :	# Do noting and branch ahead
else
	action
fi

# Gives a error without the leading :
: ${username=`whoami`}

: ${1?"Usage: $0 ARGUMENT"}

: ${HOSTNAME?} ${USER?} ${MAIL?}

: > data.xxx # File "data.xxx" now empty

:()
{
	# Accepable function name
}

: # invoke function :


# Double parentheses
(( var0 = var1<98?9:21 ))

# Array
Array=(1 2 3)

# Extended brace expansion
{a..z}



exit 0

