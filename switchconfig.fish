function switchconfig
	set choice $argv[1]
	ternary 'match $choice single' @ xrr (get-primary-display) @ xrr (get-secondary-display) (get-primary-display)
	# switch $argv
        # case "single"
          # xrr $primary
        # case "dual"
            # xrandr $secondary $primary
    # end
end
