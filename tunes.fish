# Defined in /usr/home/michael/.config/fish/buffer/tunes.fish @ line 2
function tunes
		# i3 splitv
		# emf ecn mmr/tunes &
		# # kitty -1 -e cava &
		# starton (get-focused-workspace) cava-fn kitty
		# sleep 0.5
		# i3-msg resize shrink up 400px
		i3-msg append_layout ~/.config/i3/layouts/tunes.json
		emf ecn mmr/tunes &
		cava-fn &
end
