# Defined in /home/michael/.config/fish/buffer/bremerton-weather_format-weath.fish @ line 11
function reasonable-weather
	if set weather (bremerton-weather)
        set -U priorweather (weather-icon) (format-weather-report weather)
    end
    either $priorweather unavailable
end
