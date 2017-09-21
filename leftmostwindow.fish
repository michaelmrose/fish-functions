# Defined in /home/michael/.config/fish/buffer/leftmostwindow.fish @ line 1
function leftmostwindow
	test (xwininfo -id (xdotool getactivewindow) | gr 'relative upper-left X' | nth 4 | subtract $bordersize) -eq 0
end
