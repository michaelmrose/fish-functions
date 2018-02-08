# Defined in /home/michael/.config/fish/buffer/lockall.fish @ line 2
function lockall
	set bg /tmp/bgimage.png
	# ssh desktop /home/michael/extproj/i3lock-multimonitor/lock lock &
  ssh desktop i3lock -i /tmp/bgimage.png & 
  mmlock
  d killall i3lock
end
