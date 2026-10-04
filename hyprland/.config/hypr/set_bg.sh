#!/bin/zsh

while true; do
	echo A
	elev=$( heliocron -l 43.5789 -o -79.6583 poll --json | jq -r ".solar_elevation" )
	night=$( echo "$elev < -6" | bc )
	p=$( ps aux | grep "[s]waybg" )
	if [ $night -eq 0 ]; then
		if echo $p | grep -q "daybg"; then
			continue
		fi
		killall swaybg; swaybg -o \* -i /home/christian/Pictures/daybg.jpg -m fill &
		ddcutil setvcp 10 --display 1 50
		ddcutil setvcp 10 --display 2 50
		ddcutil setvcp 10 --display 3 50
	else
		echo "Night"
		if echo $p | grep -q "nightbg"; then
			continue
		fi
		killall swaybg; swaybg -o \* -i /home/christian/Pictures/nightbg.jpg -m fill &
		ddcutil setvcp 10 --display 1 20
		ddcutil setvcp 10 --display 2 20
		ddcutil setvcp 10 --display 3 20
	fi
	echo B
	sleep 300
done
