#!/bin/bash
# rpm-check.sh

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
	echo "Usage: `basename $0` rpm-file"
	exit $E_NOARGS
fi

{ # Begin code block.
	echo
	echo "Archieve Description:"
	rpm -gpi $1
	echo
	rpm -qgl $1
	echo
	rpm -i --test $1
	if [ "$?" -eq $SUCCESS ]
	then
		echo "$1 can be installed."
	else
		echo "$1 cannot be installed."
	fi
	echo
} > "$1.test"

echo "Results of rpm test in file $1.test"

command_test(){
	type "$1" &> /dev/null;
}

cmd=rmdir
command_test $cmd; echo $?	# 0
cmd=touch
command_test $cmd; echo $?	# 1 

exit 0
