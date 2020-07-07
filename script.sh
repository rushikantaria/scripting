
#!/bin/bash

# to display file and directoru filders from currrent directory

DIR=$(pwd)
textfile=$(ls -1 *.txt)
echo Current Folder: $DIR
echo
echo List of Files:
for item in *
do
	filename=$item
	file=$(ls "$filename" | cut -f 1 -d '.')
	mfs=$(du --apparent-size --block-size=1  "$filename" | awk '{ print $1}')
	echo "${file} - ${filename##*.} - ${mfs}mb "

done
echo
echo
for item in $(ls -1 *.txt)
do
	if [ -f $item ]
	   then
		echo content of file $item
		cat $item
	fi
done
