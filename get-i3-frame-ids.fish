function get-i3-frame-ids
	xwininfo -all -root | grep i3-frame | grep 'has no name' | trim | cut -d ' ' -f1
end
