# Defined in /home/michael/.config/fish/buffer/newfuckingweather.fish @ line 2
function newfuckingweather
	set g (geo find)
  set icon (weather-icon)
	set weather (curl wttr.in/$g\?0\?T\?Q\?u|cut -c 16- | condense_lines |condense_spaces)
  echo $icon $weather
  return 0
end
