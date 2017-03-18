function get-workspaces-on-focused-display
	get-ws-info get name where rect.x = (get-ws-info get rect.x where focused = true)
end
