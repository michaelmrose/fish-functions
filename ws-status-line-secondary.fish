function ws-status-line-secondary
	set val (ws-status-line (get-active-workspaces)[1])
  echo $val :: (get-ws-info get name where rect.x = 0 | cut -c1 | sort -u)
end
