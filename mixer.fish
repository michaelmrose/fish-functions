# Defined in /usr/home/michael/.config/fish/buffer/mixer.fish @ line 1
function mixer
		kitty -1 -e alsamixer -c 1
		waituntilfocused Kitty
		i3 fullscreen
end
