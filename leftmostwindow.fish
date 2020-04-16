# Defined in /home/michael/.config/fish/buffer/leftmostwindow.fish @ line 2
function leftmostwindow
	  test (xwininfo -id (xdotool getactivewindow) | gr 'absolute upper-left x' | awk '{print $4}' | subtract (get-focused-display-x-offset)) -lt 100
end
