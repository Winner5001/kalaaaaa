#!/bin/bash

for ip in $(seq 1 24); do
ping -c 1 192.168.1.$ip | grep "bytes from" | cut -d" " -f 4 | cut -d":" -f1 &
done
