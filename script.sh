#!/bin/bash

# to display file and directoru filders from currrent directory

DIR=$(pwd)
textfile=$(ls -1 *.txt)
echo Current Folder: $DIR
echo
echo List of Files:
file *

for item in $(ls -1 *.txt)
do
	if [ -f $item ]
	   then
		echo content of file $item
		cat $item
	fi
done
