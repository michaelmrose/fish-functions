function focus-monitor
    switch $argv[1]
        case "left"
            if [ (get-focused-display) == "Displayport-1" ]
                xdotool key F10
            end
        case  '*'
            i3-msg focus $argv[1]
    end
end
