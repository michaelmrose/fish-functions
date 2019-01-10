# Defined in /home/michael/.config/fish/buffer/weather.fish @ line 2
function weather
	echo curl "wttr.in/47.56626170000001,-122.6264645{$argv}"
end
