#!/usr/bin/fish

set state (amixer -M sget Master | sed '5q;d' | cut -d " " -f 6,8 | tr -d '[]')
set mute (echo $state | cut -d " " -f 2)
set val (echo $state | cut -d " " -f 1)

if test "$mute" = "off" 
    set val "($val)[muted]"
end

echo "<b>$val</b>"
