#!/bin/bash

exec 1>etc_dir.txt
for file in /etc/*
do
if [ -d "$file" ]
then
echo "$file"
fi
done