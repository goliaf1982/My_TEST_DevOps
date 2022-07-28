#!/bin/bash

#NET 1-2
ip route add 212.100.54.64/26 via 212.100.54.1 dev eth0
#NET 1-3
ip route add 212.100.54.128/26 via 212.100.54.1 dev eth0
#NET 1-4
ip route add 212.100.54.192/26 via 212.100.54.1 dev eth0



#Без данных маршрутов в сетях 2,3,4 маршрутизация работать не будет
#NET 2-1
#ip route add 212.100.54.0/26 via 212.100.54.65 dev eth0
#NET 3-1
#ip route add 212.100.54.0/26 via 212.100.54.129 dev eth0
#NET 4-1
#ip route add 212.100.54.0/26 via 212.100.54.193 dev eth0