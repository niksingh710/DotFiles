#!/bin/bash
GOV=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
SYM="-"
TURBO=$(cat /sys/devices/system/cpu/intel_pstate/no_turbo)
[ $TURBO = 0 ] && SYM="🟢" || SYM="🔴"
[ -f "$HOME/Personal/bin/toggle-turbo" ] && DATA="$SYM $GOV | bash=$HOME/Personal/bin/toggle-turbo onclick=bash" || DATA="$SYM $GOV "
echo "$DATA"
