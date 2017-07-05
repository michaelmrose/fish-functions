function ws-status-line-secondary
	set current (ws-status-line (get-active-workspaces)[1])
  set first (echo $current | cut -c1)
  set others (condense_lines (get-ws-info get name where rect.x = 0 | cut -c1 | sort -u | sed "s/$first/_/g"))
  echo $current :: $others
end
