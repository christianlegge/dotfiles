#!/bin/zsh

while true; do
	elev=$( heliocron -l 43.5789 -o -79.6583 poll --json | jq -r ".solar_elevation" )
	night=$( echo "$elev < 0" | bc )
	p=$( ps aux | grep "[s]waybg" )
	if [ $night -eq 0 ]; then
		if echo $p | grep -q "daybg"; then
			continue
		fi
		killall swaybg; swaybg -o \* -i /home/christian/Pictures/daybg.jpg -m fill &
	else
		echo "Night"
		if echo $p | grep -q "nightbg"; then
			continue
		fi
		killall swaybg; swaybg -o \* -i /home/christian/Pictures/nightbg.jpg -m fill &
	fi
	sleep 300
done
