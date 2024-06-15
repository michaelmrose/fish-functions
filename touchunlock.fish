function touchunlock
    pcsc_scan | while read -l line
        if echo $line | grep '^ccccc'
            echo read $line
            if locked?
                killall i3lock
            end
        end
    end
end
