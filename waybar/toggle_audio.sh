#!/bin/bash
tv="alsa_output.pci-0000_01_00.1.hdmi-stereo"
mixer="alsa_output.usb-Yamaha_Corporation_MG-XU-00.analog-stereo"
current=$(pactl get-default-sink)
if [[ "$current" = "$mixer" ]]; then
	pactl set-default-sink $tv
else
	pactl set-default-sink $mixer
fi
