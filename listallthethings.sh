#!/bin/bash

# CP367 Group Project - Question 1a

for file in "$@"
do
    find_file=$(find . -name "$file")

    if [ $find_file ]     # if the file or directory exists
    then
        echo "Output of ls -l $file:"
        ls -l "$find_file"

    else                  # if the file or directory does not exist
        echo "$file not found, sorry!!"
    fi

done

exit 0
