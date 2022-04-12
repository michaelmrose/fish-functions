function set-wallpaper
		set img (pathof $argv[1])
		set format (get-feh-format $img)
		feh --bg-{$format} $img
		add-to-recent-backgrounds $img
		set -U bgstyle (cutlastn "/" 2 $img)
		set-lightdm-bg $img
		set -U bgimage $img

        wal -n --saturate 0.7 -i $img
        xrdb ~/.cache/wal/colors-i3.conf
        restart-i3
end
