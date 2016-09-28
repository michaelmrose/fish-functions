function get-windows-in-workspace
	set ws (math (findindex $argv (list-workspaces)) -1)
	xdotool search --all --desktop $ws "" 2>/dev/null
end
