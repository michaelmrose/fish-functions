function swap-albumart
	curl (clip -o) > (albumart-path)
	emf e mmr/update-album-art
end
