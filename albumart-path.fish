function albumart-path
	echo (dirname (playerctl -p mpd metadata xesam:url|cut -c8-))/cover.jpg
end
