function is-playing
	match (playerctl -p $argv status) Playing
end
