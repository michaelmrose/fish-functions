# Defined in /usr/home/michael/.config/fish/buffer/upick.fish @ line 2
function upick
	/usr/home/michael/extproj/unipicker/unipicker --command "rofi -dmenu"|xargs xdotool type
end
