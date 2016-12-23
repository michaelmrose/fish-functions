function switch-workspaces
	set w (get-active-workspaces)
  ws $w[1]
  select-all-in-workspace
  ws $w[2]
  sleep 3
  select-all-in-workspace
  ws $w
end
