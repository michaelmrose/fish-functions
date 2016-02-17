function scratchpad
	switch $argv
        case "show"
            im scratchpad show
            float_fullscreen
        case "hide"
            im scratchpad show
    end
end
