function reset-net
    echo resetting network $wired at (date '+%R')
    s ip link set dev $wired down
    s ip link set dev $wired up
    sleep 5
    online?
end
