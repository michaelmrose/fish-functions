# Defined in /home/michael/.config/fish/buffer/wallpaper-status-line.fish @ line 1
function wallpaper-status-line
	basename $bgimage .jpg|sd - " "
end
