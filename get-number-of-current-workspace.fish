function get-number-of-current-workspace
	findindex (get-focused-workspace) (get-workspaces-on-focused-display)
end
