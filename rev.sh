#! /bin/bash
read -p "enter no: " a
while (( $a % 10!=0))
do
((sum = (sum*10) + (a%10)))
((a=a/10))
done
echo "sum="$((sum))
