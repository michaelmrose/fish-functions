# Defined in /home/michael/.config/fish/buffer/navright_rightmostwindow_smart.fish @ line 53
function window-right-corner
	xwininfo -id (xdotool getactivewindow) | gr 'absolute upper-left x' | nth 4 | subtract (get-focused-display-x-offset) | addto (window-width)
end
