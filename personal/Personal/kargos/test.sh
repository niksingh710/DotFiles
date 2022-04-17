#!/bin/bash
VALUE=($(grep "^[c]pu MHz" /proc/cpuinfo | awk '{print $4}'))
NUM_CORES=$(nproc)
SUM=0
DIV=$(expr $NUM_CORES \* 1000)
echo $NUM_CORES $DIV
for i in ${VALUE[@]}; do
  SUM=$(echo $SUM + $i | bc)
done
echo "Total: $(($SUM / $DIV))"

echo ${VALUE[@]}


