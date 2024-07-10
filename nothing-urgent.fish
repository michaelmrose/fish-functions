function nothing-urgent
    for win in (wmctrl -lxp|choose 0)
        xdotool set_window --urgency 0 $win
    end
end
