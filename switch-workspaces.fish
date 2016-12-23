function switch-workspaces
	set w (get-active-workspaces)
  ws $w[1]
  sleep 3
  ws $w[2]
  ws $w
end
