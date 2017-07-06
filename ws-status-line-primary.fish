function ws-status-line-primary
	set current (ws-status-line (get-active-workspaces)[2])
  set first (echo $current | cut -c1)
  set others (get-ws-info get name where rect.x = 1680 | cut -c1 | sort -u | sed "s/$first//g" | condense_spaces)
  # echo $current :: $others
  echo "$current <span color='white'>::<span> $others"
end
