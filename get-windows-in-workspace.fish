function get-windows-in-workspace
	xdotool search --all --onlyvisible --desktop (math (findindex $argv (list-windows)) -1) "" 2>/dev/null
end
