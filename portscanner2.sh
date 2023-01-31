#!/bin/bash 

#error checking from user: seorphates on stackoverflow. Echo yes is there is argument, no if no argument is provided

network=$1
port=$2

echo "host:port"
for ((i=1;i<=254;i++)); do
	host="$1.$i"	
	timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port"
done
