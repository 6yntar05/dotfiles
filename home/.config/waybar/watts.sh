#!/bin/sh
watts_raw=`cat /sys/class/power_supply/BAT1/current_now`
let watts=$watts_raw/100000 #1000000
let watts_perc=$watts_raw%100000/1000
echo $watts.$watts_perc W