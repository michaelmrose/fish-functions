function get-workspaces-on-focused-display
	set offset (get-ws-in get rect.x where focused = true)
  get-ws-info get name where rect.x = $offset
end
