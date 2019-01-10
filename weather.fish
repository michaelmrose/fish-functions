# Defined in /home/michael/.config/fish/buffer/geo_newfuckingweather_weather.fish @ line 13
function weather
	curl "wttr.in/(geo)$argv"
end
