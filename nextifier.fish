function nextifier
    switch $argv[1]
        case once
            xdotool type next
            xdotool key Return
    end

end
