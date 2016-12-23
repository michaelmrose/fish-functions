function switch-workspaces
	set w (get-active-workspaces)
  ws $w[1]
  select-all-in-workspace
  sleep 3
  ws $w[2]
  select-all-in-workspace
  ws $w
end
