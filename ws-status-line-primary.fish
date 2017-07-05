function ws-status-line-primary
	set val (ws-status-line (get-active-workspaces)[2])
  echo $val :: (get-ws-info get name where rect.x = 1680 | cut -c1 | sort -u)
end
