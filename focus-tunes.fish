# Defined in /home/michael/.config/fish/buffer/focus-tunes.fish @ line 1
function focus-tunes
	i3-msg '[class=Clementine]' focus > /dev/null
end
