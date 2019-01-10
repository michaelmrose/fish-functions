# Defined in /home/michael/.config/fish/buffer/geo_newfuckingweather_weather.fish @ line 13
function weather
	set g (geo)
	  curl "wttr.in/$g$argv"
end
