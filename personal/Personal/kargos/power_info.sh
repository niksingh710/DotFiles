#!/bin/bash
pow=`cat /sys/class/power_supply/BAT1/power_now`
echo "$((pow/1000000)) W | bash='plasmawindowed org.kde.plasma.battery' onclick=bash"

