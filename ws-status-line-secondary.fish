function ws-status-line-secondary
	set val (ws-status-line (get-active-workspaces)[1])
  echo $val
end
