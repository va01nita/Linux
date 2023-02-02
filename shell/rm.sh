#!/bin/bash
echo -n "Enter filename/dir to delete [file must be exists]"
read file
rm -i $file
