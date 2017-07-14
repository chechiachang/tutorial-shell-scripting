#!/bin/bash
#

a=2334
let "a += 1"
echo "a = %a"
echo

b=$(a/we/BB)
echo "b = $b"
declare -i b
echo "b = $b"

c=BB34
echo "c = $c"
d=$(c/BB/23)
echo "d = $d"
echo

e=''
echo "e =$e"
echo "f =$f"

exit 0

