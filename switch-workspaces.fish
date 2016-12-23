function switch-workspaces
	save-workspaces
  select-all-in-workspace
  i3 move container to workspace foo
  i3 focus output right
  select-all-in-workspace
  i3 move container to workspace bar
  restore-workspaces
  vi3_get-workspace foo
  i3 focus output right
  vi3_get-workspace bar
end
