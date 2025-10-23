#!/bin/bash
read -p "Enter number: " n1
read -p "Enter number: " n2
echo $((n1+n2))
echo $((n1-n2))
echo $((n1*n2))
echo $((n1/n2))
echo $((n1%n2))
echo $((++n1))
echo $((--n2))

if [ $n1 -gt $n2 ]
then
echo "n1 > n2"
fi
# -gt -ge -lt -le -eq -ne -ng -nl

if [ $n1 -lt $n2 -a $n1 -gt 1 ]
then
echo "hi"
fi
# -a -o 

read a
if [ $a -eq 10 ]
then 
echo "a is 10"
elif [ $a -gt 10 ]
then
echo "a is bigger than 10"
else
echo "a is smaller than 10"
fi
