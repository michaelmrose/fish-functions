function kill-workspace
    # if exists $argv
    #     xdotool search --desktop (desktop-number-by-name i) ''|each wmctrl -ic
    # else
    #     select-all-in-workspace
    #     i3-msg kill
    # end

    if exists $argv
        set target (desktop-number-by-name $argv)
    else
        set target (xprop -root _NET_CURRENT_DESKTOP)
    end
        xdotool search --desktop (desktop-number-by-name $target) ''|each wmctrl -ic

end
