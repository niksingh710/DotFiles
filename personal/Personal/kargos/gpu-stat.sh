#!/bin/bash
GPU=$(radeontop -d - -i 1 -l 1 | grep --line-buffered -oP "gpu \K\d{1,3}")
echo "GPU: $GPU"
