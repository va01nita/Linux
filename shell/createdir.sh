#!/bin/bash
echo "enter dir name"
read ndir
if [ -d "$ndir" ]
then
echo "directory exists"
else
mkdir $ndir
echo "directory created"
fi
