function get-window-width
	xwininfo -id (wininfo id dec) | grep "Width" | cut -d ":" -f2  | trim
end
