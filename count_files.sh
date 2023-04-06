










#!/bin/bash

function file_count()
 {
   local Number_of_files=$(ls -l *.sh | wc -l)
   echo -e "Total Shell Scripts at $PWD location are $Number_of_files"
 }

file_count
