#!/bin/bash

exec 1>usr_executables.txt

find /usr/sbin/* -perm 755 -print

