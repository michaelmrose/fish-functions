# Defined in /home/michael/.config/fish/buffer/going-to-rain?.fish @ line 2
function going-to-rain?
    http get https://www.accuweather.com/en/us/bremerton-wa/98337/minute-weather-forecast/331425 |pup |g 'No precipitation for at least 120 min' > /dev/null
end
