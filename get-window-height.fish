function get-window-height
	xwininfo -id (wininfo id dec) | grep "Height" | cut -d ":" -f2  | trim
end
