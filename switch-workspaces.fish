function switch-workspaces
	set w (get-active-workspaces)
  select-all-in-workspace
  i3 move container to workspace foo
  i3 focus output right
  select-all-in-workspace
  i3 move container to workspace bar
  ws $w
  vi3_get-workspace foo
  i3 focus output right
  vi3_get-ws bar
end
