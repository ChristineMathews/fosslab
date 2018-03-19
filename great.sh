#! /bin/bash
read -p "enter no 1: " a
read -p "enter no 2: " b
if [ $a -gt $b ] ; then
echo $a" is greater"
elif [ $a -lt $b ] ; then
echo $b" is greater"
else 
echo "both are equal"
fi

