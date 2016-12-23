function switch-workspaces
	save-workpaces
  select-all-in-workspace
  i3 move container to workpace foo
  i3 focus output right
  select-all-in-workspace
  i3 move container to workpace bar
  restore-workspaces
  vi3_get-ws foo
  i3 focus output right
  vi3_get-ws bar
end
