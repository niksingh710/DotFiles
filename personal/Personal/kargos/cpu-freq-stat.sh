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
DATAPER=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
# DATAPERCPU=$(sensors | grep Core | awk '{print substr($3, 2, length($3)-5)}' | tr "\\n" " " | sed 's/ /°C  /g' | sed 's/  $//')
FIN="$DATAPER "
echo "$FIN | bash='systemmonitor' onclick=bash"
