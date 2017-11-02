# Defined in /home/michael/.config/fish/buffer/fix-wallpaper-path-list.fish @ line 2
function fix-wallpaper-path-list
	set -U recent_backgrounds (p $recent_backgrounds | sed 's%/mnt/michael%%g')
  set -U bgimage (echo $bgimage | sed 's%/mnt/michael%%g')
end
