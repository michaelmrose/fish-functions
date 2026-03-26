function focus-monitor
    set mon (get-focused-display)
    switch $argv[1]
        case "left"
            if $mon = "Displayport-1"
                xdotool key F10
            end
        case  '*'
            i3-msg focus $argv[1]
    end
end
