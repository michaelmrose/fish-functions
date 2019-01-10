# Defined in /home/michael/.config/fish/buffer/geo_newfuckingweather_weather.fish @ line 7
function newfuckingweather
	set g (geo)
	  curl wttr.in/$g\?0\?T\?Q|cut -c 16- |condense_lines|condense_spaces
    return 0
end
