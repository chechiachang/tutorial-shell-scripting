#/bin/bash
#

TIMER_INTERRUPT=14
TIMELIMIT=3

PrintAnswer()
{
	if [ "$answer" = TIMEOUT ]
	then
		echo $answer
	else
		echo "Answer is $answer"
		kill $!	# kill TimerOn function running on background
			# $! is PID of last job
	fi
}

TimerOn()
{
	sleep $TIMELIMIT && kill -s 14 $$ &
	# Wait 3 seconds, then send sigalarm to script
}

Int4Vector()
{
	answer="TIMEOUT"
	PrintAnswer
	exit $TIMER_INTERRUPT
}

trap Int4Vector $TIMER_INTERRUPT
# Timer interrupt (14) subverted for our purposes

echo "What is yout favorate vegetable"
TimerOn
read answer
PrintAnswer

exit 0
