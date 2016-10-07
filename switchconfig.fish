function switchconfig
	switch $argv
        case "single"
          xrr $primary
        case "dual"
            xrandr $secondary $primary
    end
end
