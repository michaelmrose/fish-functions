# Defined in /usr/home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 2
function newnewfuckingweather
    if not online?
        either $priorweather unavailable
        return 0
    end
    set weather (weather-icon) (/usr/bin/weather  fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial | sd '\(.*\)' '' |n l5-7|cut -d : -f2- | condense_lines |trim|condense_spaces)
    # if going-to-rain?
    #     set weather $weather rain inc
    # end

    set -U priorweather $weather aqi: (aqi)
    echo $weather
end
