#/bin/bash

E_NOARGS=75

if [ -z "$1" ]
then
	echo "Usage: `basename $0` [domain-name]"
	exit $E_NOARGS
fi

case `basename $0` in 
	"wh"		) whois $1@whois.com;;
	"wh-ripe"	) whois $1@whois.net;;
	"wh-apnic"	) whois $1@whois.io;;
	*		) echo "Usage: `basename $0` [domain-name];;
esac

exit $?
