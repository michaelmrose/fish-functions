# Defined in /usr/home/michael/.config/fish/buffer/get-feh-format_set-wallpaper.fish @ line 18
function set-wallpaper
		set img (pathof $argv[1])
		set format (get-feh-format $img)
		feh --bg-{$format} $img
		add-to-recent-backgrounds $img
		set -U bgstyle (cutlastn "/" 2 $img)
		set-lightdm-bg $img
		set -U bgimage $img
		walfn
		signal-i3blocks 12
end
