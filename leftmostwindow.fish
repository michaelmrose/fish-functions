# Defined in /home/michael/.config/fish/buffer/leftmostwindow_navleft_navrigh.fish @ line 2
function leftmostwindow
	test (xwininfo -id (xdotool getactivewindow) | gr 'absolute upper-left x' | nth 4 | subtract (get-focused-display-x-offset)) -lt 100
end
