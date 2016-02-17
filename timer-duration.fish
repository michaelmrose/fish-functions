function timer-duration
	set duration $argv[1]
    set type $argv[2]
    switch $type
        case second
            echo $duration
        case seconds
            echo $duration
        case minute
            math "$duration * 60"
        case minutes
            math "$duration * 60"
        case hour
            math "$duration * 3600"
        case hours
            math "$duration * 3600"
    end
end
