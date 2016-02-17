function get-primary-display
	xrandr | grep primary | cut -d " " -f1
end
