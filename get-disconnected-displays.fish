function get-disconnected-displays
	xrandr | gr ' connected [^0-9p]' | cut -d ' ' -f1
end
