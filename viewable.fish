function viewable
	xwininfo -id $argv | grep "Map State: IsViewable" > /dev/null
end
