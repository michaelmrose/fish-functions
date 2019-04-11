# Defined in /home/michael/.config/fish/buffer/menu_system-menu.fish @ line 2
function menu
	p $argv[2..-1] | rofi -dmenu -i -p $argv[1]
end
