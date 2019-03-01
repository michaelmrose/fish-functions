# Defined in /home/michael/.config/fish/buffer/newfuckingweather_newnewfuckin.fish @ line 17
function newnewfuckingweather
	set icon (weather-icon)
	  set report (weather-report fips5307695)
    set temp (p $report|n l3 n2)°F
    set conditions ( p $report|n l6 |cut -d : -f2|trim)
    echo $icon $temp $conditions
end
