# Defined in /home/michael/.config/fish/buffer/window-width.fish @ line 1
function window-width
	xwininfo -id (xdotool getactivewindow) | grep 'Width:' | nth 2
end
