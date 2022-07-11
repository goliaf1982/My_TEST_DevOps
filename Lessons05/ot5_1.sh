#!/bin/bash

exec 1>executable.txt

for folder in /usr/*
do
    echo "$folder:"
    for file in $folder/*
    do
	if [ -x $file ]
        then
	    echo " $file"
	fi
    done
done