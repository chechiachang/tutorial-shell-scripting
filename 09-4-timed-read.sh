#!/bin/bash
#

TIMELIMIT=4

read -t $TIMEOUTLIMIT variable <&1

echo 

if [ -z "$variable" ]
then
	echo "Timed out."
else
	echo "variable $variable"
fi

exit 0
