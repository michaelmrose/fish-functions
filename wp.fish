# Defined in /home/michael/.config/fish/buffer/set-wallpaper_wp.fish @ line 23
function wp
	if test -f $argv[1]
        set-wallpaper $argv[1]
    else
        set $rest $argv[2..-1]
        switch $argv[1]
            case view
                pics (get-folder-for-backgrounds $rest)
            case edit
                gimp $bgimage
                wp $bgimage
            case recent
                wp (sxiv -tbfor $recent_backgrounds 2> /dev/null)
            case cat
                switch $argv[2]
                    case mv
                        move-current-wallpaper-to-category $argv[3..-1]
                    case create
                        create-wallpaper-category $argv[3..-1]
                    case ls
                        find $wallpaperroot -type d | each cutlast /
                end
            case name
                name-of-wallpaper
            case file
                file-bg $rest
            case save
                save-wp $rest
            case rm
                rm $bgimage
                set recent_backgrounds (remove-from-list $bgimage $recent_backgrounds)
                wp $recent_backgrounds[1]
            case recall
                ~/.fehbg
            case any
                wp style any
            case similar
                wp style $bgstyle
            case list
                if test (count $argv) -gt 2
                    set target $argv[3]
                else
                    set target backgrounds
                end
                findall (get-folder-for-backgrounds $target) image
            case next
                wallpaper-next
            case prev
                wallpaper-prev
            case scale
                feh --bg-scale $bgimage
            case max
                feh --bg-max $bgimage
            case fill
                feh --bg-fill $bgimage
            case count
                # wallpaper list backgrounds | wc -l
            case size
                du -hs $wallpaperroot
            case rename
                file-bg $bgimage $bgstyle/$argv[2..-1]
            case style
                set backgrounddir (get-folder-for-backgrounds $argv[2])
                echo bgd is $backgrounddir
                wp (findall $backgrounddir image | shuf | head -1)
        end
  end
end
