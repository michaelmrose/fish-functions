function switch-to-nth-workspace
	i3 workspace (get-workspaces-on-focused-display $argv)
end
