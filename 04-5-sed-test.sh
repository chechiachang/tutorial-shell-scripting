#!/bin/bash
#

sed 's|/usr/local/bin|/common/bin|' file newfile

sed 's/[0-9]*/(&)/' file


MINPARAMS=10

echo

echo "The name of this script is \"$0\""

if [ -n "$1" ]
then
	echo "Parameter #1 is $1"
fi

if [ $# -lt "$MINPARAMS" ]
then
	echo
	echo "This script needs at least $MINPARAMS command-line arguments!"
fi

echo

exit 0
