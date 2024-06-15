function touchunlock
pcsc_scan | while read -l line
    if locked?
        killall i3lock
        sleep 0.1
    end
end
end
