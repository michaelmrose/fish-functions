function time-to-new-window
    set num_windows (wmctrl -l|wc -l)
    eval $argv &
    while test $num_windows -eq (wmctrl -l|wc -l)
    end
end
