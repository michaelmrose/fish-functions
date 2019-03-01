# Defined in /home/michael/.config/fish/buffer/newfuckingweather_newnewfuckin.fish @ line 2
function newfuckingweather
	if not areweonline
      either $priorweather unavailable
      return 0
  end
  
	set g (geo find)
  set icon (weather-icon)
	set weather (curl wttr.in/$g\?0\?T\?Q\?u|cut -c 16- | condense_lines |condense_spaces)
  set -U priorweather $icon $weather
  echo $icon $weather
  return 0
end
