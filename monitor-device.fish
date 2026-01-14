function monitor-device
    set -l device $argv[1]
    udevadm monitor 2>&1 \
            | grep -iE --line-buffered ".*(add|remove).*$device" \
            | sed -u -n 's/.*add.*/add/ip; s/.*remove.*/remove/ip'

end
