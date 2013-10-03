#!/bin/bash
input=$1
max=255
frac=$(echo "scale=1; (($input/100) * $max)" | bc)
rounded=$(printf "%.0f\n" $frac)
echo $rounded | sudo tee /sys/class/leds/smc::kbd_backlight/brightness
