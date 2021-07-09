# Defined in /usr/home/michael/.config/fish/buffer/tunes.fish @ line 2
function tunes
		i3 splitv
		emf ecn mmr/tunes &
		# kitty -1 -e cava &
		# sleep 0.5
		starton (get-focused-workspace) cava-fn kitty
		i3-msg resize shrink up 400px
end
