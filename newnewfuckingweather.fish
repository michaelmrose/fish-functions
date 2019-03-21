# Defined in /home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 2
function newnewfuckingweather
	echo (weather-icon) (weather-report fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial | sd '\(.*\)' '' |n l5-7|cut -d : -f2- | sd 'from the [NESW]{1,3} at' 'wind:' | condense_lines |trim|condense_spaces)
end
