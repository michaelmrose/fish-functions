# Defined in /home/michael/.config/fish/buffer/fix-wallpaper-path-list.fish @ line 1
function fix-wallpaper-path-list
	set -U recent_backgrounds (p $recent_backgrounds | sed 's%/mnt/michael%%g')
end
