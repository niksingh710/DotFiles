#!/bin/bash

MEM=$(free -h | awk '/^Mem:/ {print $3 "/" $2 }')

echo "<span style='font-size:16px;'>🧠 </span>$MEM | bash='systemmonitor' onclick=bash"
