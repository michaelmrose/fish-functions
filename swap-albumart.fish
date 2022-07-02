function swap-albumart
	# set albumart_path (playerctl -p mpd metadata mpris:artUrl|cut -c 8-) 
	set albumart_path (albumart-path)
	if exists $argv
		cp $argv "albumart_path"
	else
		curl (clip -o) > "$albumart_path"
	end
	mpc update
	emf e mmr/update-album-art
end
