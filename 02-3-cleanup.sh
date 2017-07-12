#!/bin/bash
# Cleanup, version 3

LOG_DIR=/var/log
ROOT_UID=0	# Only user with $UID 0 have root privillege
LINES=50	# Default number of lines saved.
E_XCD=86	# Can't change directory?
E_NOTROOT=87	# Non-root exit error.

# Run as root
if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi

if [ -n "$1" ]
	# Test if command-line argument is present
then
	lines=$1
else
	lines=$LINES	# Default
fi

# Check command-line arguments
E_WRONGARGS=85

case "$1" in
""	) lines=$LINES;;
*[!0-9]*) echo "Usage: `basename $0` lines-to-cleanup"; exit $E_WRONGARGS;;
*	) lines=$1;;
esac

# Clean up
cd $LOG_DIR

if [ "$PWD" != "$LOG_DIR" ] # Test if in /var/log
then
	echo "Can't change to $LOG_DIR"
	exit $E_XCD
fi

#cd /var/log || {
#	echo "Can't change to necessary directory." >&2
#	exit $E_XCD
#}

tail -n $lines messages > mesg.temp	# Save last section of message
mv mesg.temp messages			# Rename it as log file

cat /dev/null > wtmp
echo "Log files cleaned up."

exit 0

#  A zero return value from the scipt upon exit indicates sucess
#+ to the shell.
