function ws-status-line-primary
	set val (ws-status-line (get-active-workspaces)[2])
  echo $val
end
