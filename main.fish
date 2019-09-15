#!/usr/bin/fish

set battery (source ~/Desktop/LinuxProjects/status/battery.fish)
set network (source ~/Desktop/LinuxProjects/status/network.fish)
set time_date (source ~/Desktop/LinuxProjects/status/time_date.fish)
set volume (source ~/Desktop/LinuxProjects/status/volume.fish)

notify-send -u "Low" "a" (echo "$battery $network $time_date $volume")
