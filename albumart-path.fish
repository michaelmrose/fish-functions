function albumart-path
	playerctl -p mpd metadata mpris:artUrl|cut -c 8-|quote
end
