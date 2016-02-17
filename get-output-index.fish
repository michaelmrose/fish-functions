function get-output-index
	set nsinks (math (get-number-of-sinks)-1)
    set nextsink (math $default_sink+1)
    if math "$nextsink>$nsinks" > /dev/null
        set nextsink 0
    end
    switch $argv
        case headphones
            echo 0
        case speakers
            echo 1
        case next
            echo $nextsink
    end
end
