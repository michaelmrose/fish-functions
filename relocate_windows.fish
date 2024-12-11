function relocate_windows --argument from to
    for window in (windows-in-workspace $from)
        xdotool set_desktop_for_window $window (desktop-number-by-name $to)
    end
end
