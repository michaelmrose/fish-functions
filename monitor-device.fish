function monitor-device
    set -l device $argv[1]

    # Escape regex metacharacters in the device string (at least dots)
    set -l device_re (string replace -a '.' '\.' -- $device)

    # Build the regex
    set -l regex ".*(add|remove).*$device_re"

    echo "d is $device and r is $regex"

    udevadm monitor 2>&1 \
        | grep -iE --line-buffered "$regex" \
        | sed -u -n 's/.*\<add\>.*/add/ip; s/.*\<remove\>.*/remove/ip'
end
