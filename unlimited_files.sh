#!/bin/bash
if [ $# -eq 0 ]
then
	echo "Please provide atleast one argument"
exit 1
fi

files=$@
for file in $files
do
	if [ -f $file ]
	then
        	echo "$file is a regular file"
	elif [ -d $file ]
	then
        	echo "$file is a directory"
	else
        	echo "$file is another type of file or file does not exits only"
	fi
	ls -l $file
done
