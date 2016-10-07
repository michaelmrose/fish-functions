function switchconfig
	switch $argv
        case "single"
          xrr (get-primary-display)
        case "full"
            xrandr (get-display-left-to-right)
    end
end
