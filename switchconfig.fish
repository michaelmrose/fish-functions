function switchconfig
	switch $argv
        case "single"
          xrr (get-primary-display)
        case "full"
          xrr DVI-I-1 DVI-I-0
    end
end
