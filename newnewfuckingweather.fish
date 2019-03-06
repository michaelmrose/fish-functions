# Defined in /home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 2
function newnewfuckingweather
	set icon (weather-icon)
	  set report (weather-report (geo find))
    set temp (p $report|n l3 n2)°F
    set conditions ( p $report|n l6 |cut -d : -f2|trim)
    set wind (p $report|n l5|cut -d : -f1-|trim)
    echo $icon $temp $conditions wind: $wind
end
