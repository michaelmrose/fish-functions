function get-i3bar-ids
	xwininfo -all -root | grep 'i3bar for output' | condense_spaces | cut -d " " -f1
end
