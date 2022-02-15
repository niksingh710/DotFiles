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

