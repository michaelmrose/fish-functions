function ws-status-line-secondary
	set current (ws-status-line (get-active-workspaces)[2])
  set first (echo $current | cut -c1)
  set others (get-ws-info get name where rect.x = 0 | cut -c1 | sort -u | sed "s/$first//g" | condense_spaces)
  echo "<span color='#22FF22'> $current </span> <span color='white'>::</span> <span color='#22FF22'>$others</span>"
end
