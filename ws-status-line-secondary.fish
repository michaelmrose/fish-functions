function ws-status-line-secondary
	set l1 (get-ws-info get name where rect.x = 0)
  set l2 (get-ws-info get name where visible = false)
  set additional (intersect l1 l2 | cut -c1)
	ws-status-line (get-active-workspaces)[1] :: $additional
end
