function nextifier
    switch $argv[1]
        case once
            xdotool type next
            xdotool key Return
        case loop
            while 1
                nextifier once
                sleep 1
            end
    end

end
