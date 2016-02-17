function timer
	switch $argv[1]
        case in
            set time (timer-duration $argv[2..3])
        case at
            set time (timer-specific $argv[2..3])
    end
    sleep $time
    sts write $argv[4..-1]
end
