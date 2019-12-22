#!/usr/bin/fish

set battery (source ~/Projects/Fish/status/battery.fish)
set network (source ~/Projects/Fish/status/network.fish)
set time_date (source ~/Projects/Fish/status/time_date.fish)
set volume (source ~/Projects/Fish/status/volume.fish)

notify-send -u "Low" "a" (echo "$battery  $network  $time_date  $volume")
