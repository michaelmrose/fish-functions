# Defined in /home/michael/.config/fish/buffer/lockall.fish @ line 2
function lockall
	set bg /tmp/bgimage.png
	ssh desktop mmlock &
  mmlock
  d killall i3lock
end
