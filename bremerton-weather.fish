# Defined in /home/michael/.config/fish/buffer/bremerton-weather_format-weath.fish @ line 2
function bremerton-weather
	weather-report fips5303590288 --no-cache --headers=Temperature,Wind,'Sky conditions' --imperial
end
