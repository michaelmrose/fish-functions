function monitor-device
udevadm monitor 2>&1 \
            | grep -iE --line-buffered '.*(add|remove).*1050.0407' \
            | sed -u -n 's/.*\badd\b.*/add/ip; s/.*\bremove\b.*/remove/ip'

end
