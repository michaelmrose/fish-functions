# Defined in /home/michael/.config/fish/buffer/realfeel.fish @ line 1
function realfeel
	explode-words (wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/') | gr real | head -1 | cut -d \' -f2
end
