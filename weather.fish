# Defined in /home/michael/.config/fish/buffer/newfuckingweather_weather.fish @ line 8
function weather
	curl "wttr.in/(geo)$argv"
end
