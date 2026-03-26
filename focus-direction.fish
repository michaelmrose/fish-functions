function focus-direction
    switch $argv[1]
        case "left"
            if string match (get-focused-display) "Displayport-1"
                xdotool key F10
            end
        case  '*'
            i3-msg focus $argv[1]
    end
end
