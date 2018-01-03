# Defined in /home/michael/.config/fish/buffer/realfeel.fish @ line 2
function realfeel
	set url https://www.accuweather.com/en/us/bremerton-wa/98337/current-weather/331425
	explode-words (wget -q -O- "$url" | awk -F\' '/acm_RecentLocationsCarousel\.push/') | gr real | head -1 | cut -d \' -f2
end
