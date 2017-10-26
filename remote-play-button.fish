# Defined in /home/michael/.config/fish/buffer/remote-play-button.fish @ line 1
function remote-play-button
	ssh desktop "set -x DISPLAY :0; and xdotool key XF86AudioPlay"
end
