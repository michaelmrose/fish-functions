# Defined in /usr/home/michael/.config/fish/buffer/mixer.fish @ line 2
function mixer
		kitty -1 -e alsamixer -c 1
		waituntilfocused kitty
		i3 fullscreen
end
