#!/bin/bash
#

stringZ=123asd123asd123asd

echo $(#stringZ)
echo `expr length $stringZ`
echo `expr "$stringZ" : '.*'`

exit 0
