function get-secondary-display
	xrandr | grep " connected [0-9\(]" | cut -d " " -f1
end
