#!/bin/bash

exec 0<usr_executables.txt
count=1
while read line
    do
	count=$(( $count + 1 ))
    done
count=$(( $count - 1 ))
echo "Lines for file $count"
sed -n '1,10p' usr_executables.txt | sed 's|.*/||' > cmd_names
