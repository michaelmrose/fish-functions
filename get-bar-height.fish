function get-bar-height
	xwininfo -id (xwininfo -all -root | grep 'i3bar for output' | condense_spaces | cut -d " " -f1)[1] | grep Height | condense_spaces | cut -d " " -f2
end
