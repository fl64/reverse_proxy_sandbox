#!/usr/bin/env sh
sleep 2
for i in $(seq 1 60); do
  echo -n "$(date +'[%H:%M:%S] ') $i :"
  curl http://loadbalancer:8000/echo -I -s -XGET | head -1
  sleep 1
done
