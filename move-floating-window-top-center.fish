function move-floating-window-top-center
	set ypos (math (get-focused-display-y-offset) + (get-border-floating) + 1)
end
