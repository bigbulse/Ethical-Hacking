#!/bin/bash

network_prefix=$1
port=$2
echo "ip,port"
for ip in $(seq 1 254); do
  ADDRESS="$network_prefix.$ip"
  timeout .1 bash -c "echo >/dev/tcp/$ADDRESS/$port" 2>/dev/null &&
    echo "$ADDRESS,$port"
done
