# Defined in /home/michael/.config/fish/buffer/lockall.fish @ line 2
function lockall
	d i3lock
  i3lock -n
  d killall i3lock
end
