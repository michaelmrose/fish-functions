function select-package
	xbps-query -Rs "$argv" |rofi -dmenu -multi-select|choose 1|rev |choose -f - 1: -o -|rev|condense_lines
end
