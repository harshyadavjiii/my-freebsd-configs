#!/bin/sh

#start my compositor
picom -f &

# adding these lines to display necessary details on dwm status bar
while true; do
	Battery=$(acpiconf -i 0 | grep "Remaining capacity:" | awk {'print $3'})
	BatteryStatus=$(apm | grep "Line status:" | awk '{if ($4=="on-line") print "Charging"}')
        Volume=$(amixer get PCM | awk '/Front Left:/{print $5}' | grep -o '[0-9]\+%')
        DateTime=$(date +'%d %a %b %C %R')
        DiskFree=$(df -Ph | grep "/dev/ada0s1a" | awk {'print $4'})
        DiskTotal=$(df -Ph | grep "/dev/ada0s1a" | awk {'print $2'})




        xsetroot -name " $Battery $BatteryStatus $Volume $DiskFree/$DiskTotal $DateTime"
        sleep 3s
done &

# custom setting for nitrogen to restore wallpappers on start of X
nitrogen --restore &

# executing dwm on start
exec dwm
