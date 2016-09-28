function get-windows-in-workspace
	xdotool search --all --onlyvisible --desktop 4 "" 2>/dev/null
end
