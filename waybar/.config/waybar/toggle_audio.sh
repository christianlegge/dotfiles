#!/bin/bash
tv="alsa_output.pci-0000_01_00.1.hdmi-stereo"
mixer="alsa_output.usb-Yamaha_Corporation_MG-XU-00.analog-stereo"
front="alsa_output.usb-Generic_USB_Audio-00.HiFi__Headphones__sink"
current=$(pactl get-default-sink)
if [[ "$current" != "$tv" ]]; then
	pactl set-default-sink $tv
else
	pactl set-default-sink $front
fi
