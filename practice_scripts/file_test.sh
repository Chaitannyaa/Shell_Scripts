#!/bin/bash

echo -e "Enter the name of file:    \c"
read filename

if [ -f $filename ]
then 
	echo "$filename is a regular file"
elif [ -d $filename ]
then
	echo "$filename is a directory"
else
	echo "$filename is another type of file"
fi

ls -l $filename
