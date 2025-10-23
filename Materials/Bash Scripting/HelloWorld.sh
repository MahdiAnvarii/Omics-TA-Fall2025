#!/bin/bash
echo "Hello World"
name="mahdi"
age=22
echo $age $name
pointer=9.89
echo "My pointer is "$pointer
echo $SHELL

read name
echo "Your name is" $name
read -p "Enter your name : " age
read -sp "Password : " pass
echo ""
echo "Password is" $pass

current_dir=`pwd`
current_dir=$(pwd) #both works
echo "Your dir is" $current_dir
#newfile=`cat>hello.txt`
#echo $newfile

echo $0
echo $1
echo $2
echo $@
echo $#
arg1=$1