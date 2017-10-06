# Defined in /home/michael/.config/fish/buffer/ws-status-line-primary_ws-stat.fish @ line 2
function ws-status-line-primary
	set ws (get-active-workspaces | grep -E '^j|^k|^l|^n|^m|^i|^p|^6|^7|^8|^9|^0')
  set current (ws-status-line $ws)
	# set current (ws-status-line (get-active-workspaces)[2])
  set first (echo $current | cut -c1)
  set others (get-ws-info get name where rect.x = 1680 | cut -c1 | sort -u | sed "s/$first//g" | condense_spaces)
  # echo $current :: $others
  echo "<span color='#22FF22'> $current </span> <span color='white'>::</span> <span color='#22FF22'>$others</span>"
end
