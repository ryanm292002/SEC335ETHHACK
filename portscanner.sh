#!/bin/bash 

#error checking from user: seorphates on stackoverflow. Echo yes is there is argument, no if no argument is provided

hostfile=$1
portfile=$2
if [ "$1" ]; then
	echo yes
else 
	echo no please provide an argument for this script to properly run
fi

for host in $(cat $hostfile); do 
	for port in $(cat $portfile); do 
		timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
			echo "Open port on $host is $port"
	done
done
