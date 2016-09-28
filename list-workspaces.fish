function list-workspaces
	i3-msg -t get_workspaces|jq .[]|jq -r ".name"
end
