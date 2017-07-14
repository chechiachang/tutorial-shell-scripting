#!/bin/bash
# shift args

shift 2

until [ -z "$1" ]
do
	echo -n "$1 "
	shift
done

echo "$2"

exit 0
