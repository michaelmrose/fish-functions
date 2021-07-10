# Defined in /usr/home/michael/.config/fish/buffer/tunes.fish @ line 2
function tunes
		i3 splitv
		i3-msg append_layout ~/.config/i3/layouts/tunes.json
		emf ecn mmr/tunes &
		cava-fn &
end
