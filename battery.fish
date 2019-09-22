#!/usr/bin/fish

set acpi (acpi)

set state (echo $acpi | cut -d " " -f 3 | sed 's/[^a-zA-Z]*//g')
set val (echo $acpi | cut -d " " -f 4 | sed 's/[^0-9%]*//g')

if test "$state" = "Discharging"
    echo "<b><span foreground='#dc322f'>$val</span></b>"
else if test "$state" = "Charging"
    echo "<b><span foreground='#88c563'>$val</span></b>"
else
    echo "<b>$val</b>"
end
