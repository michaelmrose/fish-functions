function switchconfig
	switch $argv
        case "single"
          xrr (get-primary-display)
        case "full"
          xrr (get-secondary-display) (get-primary-display)
    end
end
