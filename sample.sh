#!/bin/bash

if [ $# -ne 1 ]
then 
	echo "Please provide a single argument:"
exit 1
fi
if [ -f $1 ]
then
        echo "$1 is a regular file"
elif [ -d $1 ]
then
        echo "$1 is a directory"
else
        echo "'$1' file is difficult to judge"
fi

ls -l $1
