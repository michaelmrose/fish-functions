function focus-direction
    if string match (get-focused-display) "Displayport-1"
        xdotool key F10
    else
        i3-msg focus $argv[1]
    end
end
