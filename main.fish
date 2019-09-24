#!/usr/bin/fish

set battery (source ~/Projects/Linux/status/battery.fish)
set network (source ~/Projects/Linux/status/network.fish)
set time_date (source ~/Projects/Linux/status/time_date.fish)
set volume (source ~/Projects/Linux/status/volume.fish)

notify-send -u "Low" "a" (echo "$battery  $network  $time_date  $volume")
