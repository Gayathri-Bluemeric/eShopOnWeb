#!/bin/sh
procs=`ps -ae -o comm,pid | grep "^dotnet" | tr -s ' ' | cut -f2 -d' '`
if [ -n "$procs" ]
then
	kill -1 $procs
fi
