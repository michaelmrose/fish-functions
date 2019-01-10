# Defined in /home/michael/.config/fish/buffer/weather.fish @ line 2
function weather
	# set g (geo find)
    set g (geo)
	  curl "wttr.in/$g$argv" --output /tmp/bremerton.png
end
