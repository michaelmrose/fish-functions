# Defined in /home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 2
function newnewfuckingweather
	if not areweonline
        either $priorweather unavailable
        return 0
    end
	  set weather (weather-icon) (weather-report fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial | sd '\(.*\)' '' |n l5-7|cut -d : -f2- | condense_lines |trim|condense_spaces)
    set -U priorweather $weather
    echo $weather
end
