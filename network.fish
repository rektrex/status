#!/usr/bin/fish

set val (nmcli -f ACTIVE,SSID dev wifi list | awk '$1=="yes" { print $2 }')

if test "$val" = ""
    echo "<span foreground='#dc322f'> not connected</span>"
else
    echo "<b> $val</b>"
end
