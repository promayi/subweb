#!/bin/bash

workdir=/root/subweb
pid=`netstat -tupln | egrep '10086|10010' | awk '{print $7}' | awk -F "/" '{print $1}'`

for i in $pid
do
	kill -9 $i
done

sleep 5

cd $workdir
./subweb.sh
