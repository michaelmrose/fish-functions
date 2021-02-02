# Defined in /usr/home/michael/.config/fish/buffer/tunes.fish @ line 2
function tunes
		emf ec mmr/tunes &
		kitty -1 -e cava &
		sleep 1
		i3-msg resize shrink up 120px
end
