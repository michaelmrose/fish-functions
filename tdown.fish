# Defined in /home/michael/.config/fish/buffer/tdown.fish @ line 2
function tdown
	set duration (prompt duration)
  set title (prompt title)
  kitty -1 -e termdown -T $title $duration
end
