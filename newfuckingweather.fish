# Defined in /home/michael/.config/fish/buffer/newfuckingweather.fish @ line 2
function newfuckingweather
	set g (geo find)
	  curl wttr.in/$g\?0\?T\?Q\?u|cut -c 16- |condense_lines|condense_spaces
    return 0
end
