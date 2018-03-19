#! /bin/bash
read -p "enter a no: " a
p=$a
while [ $a -gt 0 ]
do
((b=a%10))
((s=b+s*10))
((a=a/10))
done
if [ $s -eq $p ]; then
echo "palindrome"
else
echo "not palindrome"
fi
