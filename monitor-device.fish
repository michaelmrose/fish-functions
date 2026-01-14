function monitor-device
    set -l device $argv[1]
    set -l regex ".*(add|remove).*$device"

    udevadm monitor 2>&1 \
        | grep -iE --line-buffered "$regex" \
        | sed -u -n 's/.*\<add\>.*/add/ip; s/.*\<remove\>.*/remove/ip'

end
