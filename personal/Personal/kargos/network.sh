#!/bin/bash

DEV=$(ip addr | awk '/state UP/ {print $2}' | sed 's/.$//')


if [[ $DEV == *'wl'* ]];then
  CONN= 
  NCONN=睊 
elif [[ $DEV == *'en'* ]];then
  CONN= 
  NCONN=
fi

if [ $(cat /sys/class/net/$DEV/operstate) = up ];then
  SSID=$(iwgetid -r)
  OUTPUT="$CONN $SSID" 
else
  OUTPUT="$NCONN"
fi
echo $OUTPUT 

