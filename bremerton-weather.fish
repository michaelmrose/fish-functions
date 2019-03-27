# Defined in /home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 20
function bremerton-weather
	weather-report fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial
end
