# Defined in /home/michael/.config/fish/buffer/weather-status-line.fish @ line 2
function weather-status-line
	# set weather (weather $geo)
    # echo (weather-icon) (echo $weather | cut -d " " -f2 | trim) (echo $weather | cut -d " " -f4-)
  set current (weather.py 2368481 --format "{text} {temp}°{unit_temperature} {wind_direction_arrow} {wind_speed} mph")
  echo $current feels like: (realfeel)°F
end
