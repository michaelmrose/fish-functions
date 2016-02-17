function get-window-x-pos
	xwininfo -id (wininfo id dec) | grep "Absolute upper-left X" | cut -d ":" -f2 | trim
end
