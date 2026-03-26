function focus-monitor
    switch $argv[1]
        case "left"
            if "fuck" = "Displayport-1"
                xdotool key F10
            end
        case  '*'
            i3-msg focus $argv[1]
    end
end
