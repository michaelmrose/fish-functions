function kill-workspace
    if exists $argv
        set target (desktop-number-by-name $argv)
    else
        set target (xprop -root _NET_CURRENT_DESKTOP)
    end
        xdotool search --desktop (desktop-number-by-name $target) ''|each wmctrl -ic

end
