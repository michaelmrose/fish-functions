# Defined in /home/michael/.config/fish/buffer/weather.fish @ line 2
function weather
	set g (geo find)
	  curl "wttr.in/$g$argv"
end
