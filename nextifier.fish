function nextifier
    switch $argv[1]
        case once
            xdotool type next
            xdotool key Return
        case loop
            while true
                nextifier once
                sleep $argv[2]
            end
    end

end
