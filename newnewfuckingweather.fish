# Defined in /home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 2
function newnewfuckingweather
	
	# # set report (weather-report (geo find))
  # set report (weather-report fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial)
  # set report (p $report|n l5-7|cut -d : -f2-|trim |condense_lines) 
  # echo $icon $report

  echo (weather-icon) (weather-report fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial |n l5-7|cut -d : -f2-|trim |condense_lines)
  # set temp (p $report|n l3 n2)°F
  # set conditions ( p $report|n l6 |cut -d : -f2|trim)
  # # set wind (p $report|n l5|cut -d : -f1-|trim)
  # set windchill (p $report |grep Windchill|trim)
  # set wind (filter-with-expr isnumeric (explode-words (p $report|n l5)))
  # echo $icon $temp $conditions wind: $wind mph $windchill
end
