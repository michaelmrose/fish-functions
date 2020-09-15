# Defined in /usr/home/michael/.config/fish/buffer/aqi.fish @ line 1
function aqi
http 'https://aqicn.org/city/usa/washington/bremerton/spruce-ave/'|pup |g 'fine particulate matter)  AQI is'|choose 5
end
