#!/bin/bash 

#error checking from user: seorphates on stackoverflow. Echo yes is there is argument, no if no argument is provided

network_prefix=$1
dns=$2

echo "DNS resolver tool"
for ((i=1;i<=254;i++)); do
	name="$network_prefix.$i"	
	nslookup $name $dns | grep "="
done
