# Defined in /home/michael/.config/fish/buffer/reasonable-weather.fish @ line 2
function reasonable-weather
	if set weather (bremerton-weather)
      set -U priorweather (weather-icon) (format-weather-report $weather)
  end
  either (echo $priorweather) unavailable
end
