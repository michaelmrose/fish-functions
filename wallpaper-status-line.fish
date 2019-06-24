# Defined in /home/michael/.config/fish/buffer/wallpaper-status-line.fish @ line 2
function wallpaper-status-line
	basename $bgimage[2] |sd - " " | cut -d . -f1
end
