# Defined in /home/michael/.config/fish/buffer/window-right-corner.fish @ line 1
function window-right-corner
	xwininfo -id (xdotool getactivewindow) | gr 'absolute upper-left x' | nth 4 | subtract (get-focused-display-x-offset) | addto (window-width)
end
