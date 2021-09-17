#!/bin/bash

prefix=$1
server=$2
echo "dns resolution for $server"
for ip in $(seq 1 254); do
  address="$prefix.$ip"
  nslookup "$address" "$server" >/dev/null
  if [ $? == 0 ]; then
     nslookup "$address" "$server"
  fi
done
