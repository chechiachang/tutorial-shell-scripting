#!/bin/bash
#

E_BADARGS=85

if [ ! -n "$1" ]
then
	echo "`basename $0` "
	exit $E_BADARGS
fi

echo

index=1

echo "Listing with \"\$*\":"
for arg in "$*"
do 
	echo "Arg #$index = $arg"
	let "index+=1"
done
echo "Entire arg list"

echo

index=1

exit 0

