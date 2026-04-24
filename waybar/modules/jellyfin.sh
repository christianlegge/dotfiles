#!/bin/sh

shutdown --show
scheduled=$?

if [ "$scheduled" = 0 ]; then
	echo -e "{\"text\":\""Shutdown scheduled. Right click to cancel."\", \"class\": \"default\"}"
	exit
fi

users=$(curl --no-progress-meter -H Authorization:\ MediaBrowser\ Token=REDACTED http://127.0.0.1:8096/Sessions | jq | grep -o 'NowPlayingItem' | wc -l)

class=default
if [ "$users" != 0 ]; then
	class=red
fi

echo -e "{\"text\":\""Jellyfin users: $users"\", \"class\": \"$class\"}"

