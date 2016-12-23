function switch-workspaces
	set w (get-active-workspaces)
  ws $w[1]
  select-all-in-workspace
  i3 move container to workspace left
  ws $w[2]
  sleep 3
  select-all-in-workspace
  i3 move container to workspace right
  sleep 3
  ws $w
end
