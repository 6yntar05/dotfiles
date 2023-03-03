#!/bin/sh
let watts_raw=$(cat /sys/class/power_supply/BAT1/current_now)
let watts_cor=$watts_raw\*5/4
let watts=$watts_cor/100000
let watts_perc=$watts_cor%100000/1000
echo $watts.$watts_perc W
