# Defined in /home/michael/.config/fish/buffer/ws-status-line-primary_ws-stat.fish @ line 13
function ws-status-line-secondary
	set ws (get-active-workspaces | grep -E '^j|^k|^l|^n|^m|^i|^p|^6|^7|^8|^9|^0')
	# set current (ws-status-line (get-active-workspaces)[1])
  set current (ws-status-line $ws)
  set first (echo $current | cut -c1)
  set others (get-ws-info get name where rect.x = 0 | cut -c1 | sort -u | sed "s/$first//g" | condense_spaces)
  echo "<span color='#22FF22'> $current </span> <span color='white'>::</span> <span color='#22FF22'>$others</span>"
end
