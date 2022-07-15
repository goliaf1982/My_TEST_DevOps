#!/bin/bash

SERVICES=$1

ALL_SERVICES_STARTED=true

if [ $EUID -ne 0 ]; then
  if [ "$(id -u)" != "0" ]; then
    echo "root privileges are required" 1>&2
    exit 1
  fi
  exit 1
fi

for service in ${SERVICES//,/ }
do
    STATUS=$(systemctl is-active ${service})

    if [ "${STATUS}" != "active" ]; then
        echo "${service} not started"
        ALL_SERVICES_STARTED=false
    fi
done

if ${ALL_SERVICES_STARTED} ; then
    echo "All services started"
    PID=$(pidof $service)
    systemctl stop $service
    echo "Process $service PIDs: $PID stopped"
    exit 0
else
    echo "Check Failed"
    exit 1
fi
