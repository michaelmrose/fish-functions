# Defined in /home/michael/.config/fish/buffer/newfuckingweather.fish @ line 1
function newfuckingweather
	curl wttr.in|pup body > /tmp/weather.out
    echo (cat /tmp/weather.out | n l4 | cut -c 31-)(cat /tmp/weather.out | n l5 | cut -c 79-)
end
