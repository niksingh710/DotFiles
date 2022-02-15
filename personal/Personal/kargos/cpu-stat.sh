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
GOV=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
SYM="-"
TURBO=$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)
[ $TURBO = 0 ] && SYM="🟢" || SYM="🔴"
FIN="▎$SYM $GOV ▎"
[ -f "$HOME/Personal/bin/toggle-turbo" ] && DATA="$FIN | bash=$HOME/Personal/bin/toggle-turbo onclick=bash" || DATA="$SYM $GOV"
echo "$DATA"
