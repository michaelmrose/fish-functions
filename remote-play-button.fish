# Defined in /home/michael/.config/fish/buffer/active-playerctl_remote-play-b.fish @ line 20
function remote-play-button
	ssh desktop "set -x DISPLAY :0; and xdotool key XF86AudioPlay"
end
