function get-workspaces-on-focused-display
	set offset (get-ws-info get rect.x where focused = true)
	set list (get-ws-info get name where rect.x = $offset)
  if exists $argv
    echo $list[$argv]
  else
    p $list
  end
end
