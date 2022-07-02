function swap-albumart
	set albumart_path (playerctl -p mpd metadata mpris:artUrl|cut -c 8-) 
	curl (clip -o) > "$albumart_path"
	emf e mmr/update-album-art
end
