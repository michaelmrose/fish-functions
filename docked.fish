# Defined in /home/michael/.config/fish/buffer/docked.fish @ line 2
function docked
	# test (count (get-connected-displays)) -gt 1
  list-outputs | gr dock
end
