# Defined in /home/michael/.config/fish/buffer/geo_newfuckingweather_weather.fish @ line 7
function newfuckingweather
	curl wttr.in/47.56626170000001,-122.6264645\?0\?T\?Q|cut -c 16- |condense_lines|condense_spaces
    return 0
end
