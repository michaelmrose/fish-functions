function select-package
	xbps-query -Rs janet|rofi -dmenu -multi-select|choose 1|rev |choose -f - 1: -o -|rev
end
