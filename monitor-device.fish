function monitor-device
    set -l device $argv[1]
    set -l regex ".*(add|remove).*$device"

    stdbuf udevadm monitor 2>&1 \
        | stdbuf grep -iE --line-buffered "$regex" \
        | stdbuf sed -u -n 's/.*\<add\>.*/add/ip; s/.*\<remove\>.*/remove/ip'

end
