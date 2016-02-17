function weather-status-line
	
    # set weather (weather $geo)
    # echo (weather-icon) (echo $weather | cut -d " " -f2 | trim) (echo $weather | cut -d " " -f4-)
    weather.fish bremerton
end
