#!/bin/bash

# https://serverfault.com/a/532564

x=$(bc <<< "$1")

secs=$((x))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done