function watchlock
    udevadm monitor | grep -iE --line-buffered '1050.0407.*hidraw' | while read -l line
        echo line is $line
        if string match -q '*add*' -- $line
            echo matched add
            if locked?
                echo unlocking
                killall i3lock
            end
        else if string match -q '*remove*' -- $line
            echo matched remove
            if not locked?
                echo locking
                betterlockscreen -l &
            end
        end
    end
end
