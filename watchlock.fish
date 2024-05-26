function watchlock
    udevadm monitor | grep -iE --line-buffered hidraw8 | while read -l line
        if string match -q '*add*' -- $line
            if locked?
                killall i3lock
            end
        else if string match -q '*remove*' -- $line
            if not locked?
                betterlockscreen -l
            end
        end
        sleep 1.5
    end
end
