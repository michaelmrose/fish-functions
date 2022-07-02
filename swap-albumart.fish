function swap-albumart
	set albumart_path (playerctl -p mpd metadata mpris:artUrl|cut -c 8-) 
	if exists $argv
		cp $argv "albumart_path"
	else
		curl (clip -o) > "$albumart_path"
	end
	emf e mmr/update-album-art
end
