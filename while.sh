







#!/bin/bash

i=1
while test $i != 6 
do
    echo "$i"
    i=`expr $i + 1`  # ` ` are backticks not single quotes.
done
