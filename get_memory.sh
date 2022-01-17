#!/bin/bash
# mem: total, swap: total
# mem: 94430MB, swap: 32767MB
# date,time,memUsed,memCache,swapUsed

memUsed=$(free -m | awk '/Mem/{printf("%.f\n"), $3}')
memCache=$(free -m | awk '/Mem/{printf("%.f\n"), $6}')
swapUsed=$(free -m | awk '/Swap/{printf("%.f\n"), $3}')

echo "$(date "+%T"),$memUsed,$memCache,$swapUsed"




