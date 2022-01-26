function toggle-side-gaps
    set width (window-width)
    set monitor_width (get-focused-display-width)
    set target_width (math $monitor_width - 140)
    set gap_width (math $monitor_width / 12.8)
    if test $width -lt $target_width
        i3 gaps horizontal current set 0
    else
        # set size (math (math $width - 1200 ) / 2)
        i3 gaps horizontal current set $gap_width
    end

end
