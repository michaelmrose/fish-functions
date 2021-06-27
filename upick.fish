# Defined in /usr/home/michael/.config/fish/buffer/upick.fish @ line 1
function upick
	unipicker --command "rofi -dmenu"|xargs xdotool type
end
