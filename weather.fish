# Defined in /home/michael/.config/fish/buffer/weather.fish @ line 2
function weather
	# set g (geo find)
    set g (geo)
	  curl "wttr.in/$g.png" --output /tmp/bremerton.png
    sxiv -f /tmp/bremerton.png
end
