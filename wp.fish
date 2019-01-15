# Defined in /home/michael/.config/fish/buffer/set-wallpaper_wp.fish @ line 23
function wp
	if test -f $argv[1]
        set-wallpaper $argv[1]
    else
        set $rest $argv[2..-1]
        switch $argv[1]
            case view
                pics (get-folder-for-backgrounds $rest)
            case categories
                find $wallpaperroot -type d | each cutlast /
            case edit
                gimp $bgimage
                wp $bgimage
            case recent
                wp (sxiv -tbfor $recent_backgrounds 2> /dev/null)

                

        end
    end
end
