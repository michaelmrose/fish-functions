function touchunlock
    pcsc_scan | while read -l line
        echo $line
        if locked?
            killall i3lock
        end
    end
end
