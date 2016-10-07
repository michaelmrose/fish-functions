function switchconfig
	ternary 'match $argv[1] single' @ xrr (get-primary-display) @ xrr (get-secondary-display) (get-primary-display)
	# switch $argv
        # case "single"
          # xrr $primary
        # case "dual"
            # xrandr $secondary $primary
    # end
end
