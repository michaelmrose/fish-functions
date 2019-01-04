# Defined in /home/michael/.config/fish/buffer/newfuckingweather.fish @ line 2
function newfuckingweather
	curl wttr.in|pup body > /tmp/weather.out
  set weather (cat /tmp/weather.out | n l4 | cut -c 31-)
  set temp (cat /tmp/weather.out | n l5 | cut -c 79-)
  echo $weather $temp
end
