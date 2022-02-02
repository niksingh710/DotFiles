#!/bin/bash


#!/bin/bash

STATUS=`cat /sys/class/power_supply/BAT1/status`
CAPACITY=`cat /sys/class/power_supply/BAT1/capacity`
POW=`cat /sys/class/power_supply/BAT1/power_now`

if [ $STATUS = Unknown ];then
  STATUS='Charging'
fi
if [ $STATUS = Full ];then
   BAT="🔋 "
elif [ $STATUS = Charging ];then
   BAT="🔌 $CAPACITY%"
elif [ $STATUS = Discharging ];then
   BAT="🔋 $CAPACITY"
  if [ $CAPACITY -le 80 ];then
    BAT="🦾 $CAPACITY%"
  fi
  if [ $CAPACITY -le 50 ];then
    BAT="😅 $CAPACITY%"
  fi
  if [ $CAPACITY -le 35 ];then
    BAT="😰 $CAPACITY%"
  fi
  if [ $CAPACITY -le 20 ];then
    BAT="💀 $CAPACITY%"
  fi
  if [ $CAPACITY -le 5 ];then
    BAT="⚰️  $CAPACITY%"
  fi
fi

echo "$BAT -> $((POW/1000000)) W | bash='plasmawindowed org.kde.plasma.battery' onclick=bash"

