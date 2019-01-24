# Defined in /home/michael/.config/fish/buffer/wp.fish @ line 2
function wp
	if not exists $argv
        while read -l line
            wp $line
        end
        return 0
    end

	  if test -f $argv[1]
            set-wallpaper $argv[1]
    else
        switch $argv[1]
            case view
                pics (get-folder-for-backgrounds $argv[2])
            case categories
                for i in (find $wallpaperroot -type d)
                    cutlast / $i
                end
            case edit
                gimp $bgimage
                wp $bgimage
            case url
                file-bg-url $argv[2..-1]
            case recent
                sxiv -tbfor $recent_backgrounds 2> /dev/null
            case cat
                move-current-wallpaper-to-category $argv[2]
            case name
                name-of-wallpaper
            case create
                create-wallpaper-category $argv[2..-1]
            case file
                file-bg $argv[2..-1]
            case rename-category
                if test (count $argv -gt 2)
                    set old $argv[2]
                    set new $argv[3]
                else
                    set old (cutlastn / 2 $bgimage) 
                    set new $argv[2]
                end
                set src (get-folder-for-backgrounds $old)
                set dest (echo $src | sed "s#/$old#/$new#g")
                sed -i "s#/$old/#/$new/#g" ~/.fehbg
                mv $src $dest
                set -U recent_backgrounds (p $recent_backgrounds | sed "s#/$old/#/$new/#g" | sed "s#/mnt/michael##g")
                wp recall
            case save
                save-wp $argv[2]
            case search
                sxiv -tbfor (findall $wallpaperroot image | gr -w $argv[2..-1]) 2> /dev/null
            case rm
                rm $bgimage
                set recent_backgrounds (remove-from-list $bgimage $recent_backgrounds)
                wp $recent_backgrounds[1]
            case recall
                ~/.fehbg
            case similar
                wp style $bgstyle
            case ls
                if test (count $argv) -gt 1
                    findall (get-folder-for-backgrounds $argv[2]) image
                else
                    println $recent_backgrounds
                end
            case next
                wallpaper-next
            case prev
                wallpaper-prev
            case scale
                feh --bg-scale $bgimage
            case max
                feh --bg-max $bgimage
                return
            case fill
                feh --bg-fill $bgimage
                return
            case count
                wallpaper list backgrounds | wc -l
            case size
                du -hs $wallpaperroot
            case rename
                file-bg $bgimage $bgstyle/$argv[2..-1]
            case style
                set backgrounddir (get-folder-for-backgrounds $argv[2])
                echo bgd is $backgrounddir
                set img (findall $backgrounddir image | shuf | head -1)
                wp $img
        end

        end
end
