function kill-all-in-workspace
    xdotool search --all --onlyvisible --desktop $(xprop -notype -root _NET_CURRENT_DESKTOP | choose 2) "" 2>/dev/null|each wmctrl -ic
end
