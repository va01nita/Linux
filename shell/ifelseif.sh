#!/bin/bash
echo "Enter A:"
read -r a
echo "Enter B:"
read -r b
echo "Enter C:"
read -r c
echo "Enter D:"
read -r d
if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]; then
echo "$a is Greater"
elif [ $b  -gt $c -a $b -gt $d ]; then
echo "$b is greater"
elif [ $c -gt $d ]; then
echo "$c is greater"
else
echo "$d is greater"
fi
