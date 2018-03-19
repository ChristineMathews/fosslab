#! /bin/bash
a=1
while [ $a -lt 11 ]
do
echo $((a))
((sum = sum + a))
((a=a+1))
done
echo "sum="$((sum))
