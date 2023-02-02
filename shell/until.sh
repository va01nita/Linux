#!/bin/bash
echo "Enter value:"
read a
until [ ! $a -lt 10 ]
do
echo $a
done
