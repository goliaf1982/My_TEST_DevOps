#!/bin/bash

exec 1>log.txt

ls -RlSr /var/log | grep -v '^d'