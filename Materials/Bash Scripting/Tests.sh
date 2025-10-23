#!/bin/bash
a="meiti"
b="meiti"
if test "$a" = "$b"
then
echo "a is equal to b"
else
echo "a is not equal to b"
fi

c=""
if test -n "$c"
then
echo "c is not empty"
else
echo "c is empty"
fi

if test -s hello.txt
then
echo "File is not empty"
fi

if test -d  /mnt/d/Linux/
then
echo "is a dir"
fi