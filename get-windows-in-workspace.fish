function get-windows-in-workspace
	math (findindex $argv (list-workspaces)) -1
	xdotool search --all --onlyvisible --desktop (math (findindex $argv (list-workspaces)) -1) "" 2>/dev/null
end
