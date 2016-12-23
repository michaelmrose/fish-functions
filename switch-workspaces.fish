function switch-workspaces
	set w (get-active-workspaces)
  ws $w[1]
  select-all-in-workspace
  i3 move container to workspace left
  ws $w[2]
  select-all-in-workspace
  i3 move container to workspace right
  ws $w[1]
  vi3_get-workspace right
  ws $ws[2]
  vi3_get-workspace left
end
