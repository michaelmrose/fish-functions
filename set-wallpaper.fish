function set-wallpaper
        set img (pathof $argv[1])
        set format (get-feh-format $img)
        feh --bg-{$format} $img
        add-to-recent-backgrounds $img
        set -U bgstyle (cutlastn "/" 2 $img)
        set-lightdm-bg $img
        set -U bgimage $img
        walfn
        convert $img -resize 2000x2000 ~/.cache/wal/rofi.jpg
        pywalfox update
        betterlockscreen -u $bgimage --fx > /dev/null &
        wal -n --saturate 0.7 -i $img
        xrdb ~/.cache/wal/colors-i3.conf
        i3 restart
        restart picom
end
