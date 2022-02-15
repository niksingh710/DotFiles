#!/bin/bash
# These are the scripts and files created by Nikhil Singh <nik.singh710@gmail.com>
#            _   ________ __ __  ________   _      
#           / | / /  _/ //_// / / /  _/ /  ( )_____
#          /  |/ // // ,<  / /_/ // // /   |// ___/
#         / /|  // // /| |/ __  // // /___  (__  ) 
#        /_/ |_/___/_/ |_/_/ /_/___/_____/ /____/  
#                                                  
#             ______            _____           
#            / ____/___  ____  / __(_)___ ______
#           / /   / __ \/ __ \/ /_/ / __ `/ ___/
#          / /___/ /_/ / / / / __/ / /_/ (__  ) 
#          \____/\____/_/ /_/_/ /_/\__, /____/  
#                                 /____/        
#                                     __
#                    ____ _____  ____/ /
#                   / __ `/ __ \/ __  / 
#                  / /_/ / / / / /_/ /  
#                  \__,_/_/ /_/\__,_/   
#                                       
#              _____           _       __      
#             / ___/__________(_)___  / /______
#             \__ \/ ___/ ___/ / __ \/ __/ ___/
#            ___/ / /__/ /  / / /_/ / /_(__  ) 
#           /____/\___/_/  /_/ .___/\__/____/  
#                           /_/                
# (niksingh710) [https://github.com/niksingh710] [https://t.me/niksingh710]

STATUS=`cat /sys/class/power_supply/BAT1/status`
CAPACITY=`cat /sys/class/power_supply/BAT1/capacity`
POW=`cat /sys/class/power_supply/BAT1/power_now`

if [ $STATUS = Unknown ];then
  STATUS='Charging'
fi
if [ $STATUS = Full ];then
   BAT="🔋 "
elif [ $STATUS = Charging ];then
   BAT=" $CAPACITY%"
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
POW=$((POW/1000000))
POWSTR="-> $POW W "
if (($POW == 0));then
  POWSTR=""
fi
echo "$BAT $POWSTR | bash='plasmawindowed org.kde.plasma.battery' onclick=bash"

