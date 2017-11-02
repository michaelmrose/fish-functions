# Defined in /home/michael/.config/fish/buffer/sync-desktop-wallpaper.fish @ line 1
function sync-desktop-wallpaper
	ssh desktop "set -x DISPLAY :0; wp $bgimage"
end
