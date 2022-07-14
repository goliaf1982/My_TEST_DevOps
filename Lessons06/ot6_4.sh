#!/bin/bash

exec 1>pid

echo "Current open PID:"

lsof -t

while read -r line; do
    my_array+=("$line")
done < pid

echo "Curen open file for user:"
for id in "${my_array[@]:1}"; do
	echo -e "PID: $id\n"
	lsof -p $id -Fn0
	echo -e "\n"
done 