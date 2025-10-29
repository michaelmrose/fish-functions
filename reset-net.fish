function reset-net
    s ip link set dev $wired down
    s ip link set dev $wired up
    sleep 5
    online?
end
