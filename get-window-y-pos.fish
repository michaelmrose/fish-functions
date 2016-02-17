function get-window-y-pos
	xwininfo -id (wininfo id dec) | grep "Absolute upper-left Y" | cut -d ":" -f2 | trim
end
