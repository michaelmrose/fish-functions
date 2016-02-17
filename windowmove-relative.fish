function windowmove-relative
	set xpos (get-window-x-pos)
    set ypos (get-window-y-pos)
    set direction $argv[1]
    set distance $argv[2]
    switch $direction
        case "left"
            set xpos (math "$xpos - $distance")
        case "right"
            set xpos (math "$xpos + $distance")
        case "up"
            set ypos (math "$ypos - $distance")
        case "down"
            set ypos (math "$ypos + $distance")
    end
    if test $xpos -lt 0
        set xpos 0
    end
    if test $ypos -lt 0
        set ypos 0
    end
    xdc windowmove $xpos $ypos
end
