function wp

    if not exists $argv
        while read -l line
            set acc $acc $line
        end
        wp $acc
        return 0
    end
    if test  -f $argv[1]
        set-wallpaper $argv &
    else
        switch $argv[1]
            case recent
                sxiv -tbfor $recent_backgrounds 2> /dev/null
            case view
                sxiv -tbfor (get-folder-for-backgrounds backgrounds)
            case open
                sxiv -f $bgimage
            case url
                set tmp /tmp/(uid)-wallpaper.jpg
                curl $argv[2] > $tmp
                wp $tmp
            case list
                sxiv -tbfor (fnd '.*' -t f ~/backgrounds|g $argv[2..-1])|wp
            case show
                fnd '.*' -t f ~/backgrounds|g $argv[2..-1]
            case save
                file-bg $bgimage $argv[2..-1]

            case rm
                rm $bgimage
                set recent_backgrounds (remove-from-list $bgimage $recent_backgrounds)
                wp $recent_backgrounds[1]
            case recall
                ~/.fehbg
                sleep 0.2
                restart picom
            case open
                sxiv $bgimage
            case prev
                wp $recent_backgrounds[2]
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
            case clip
                wp url (xclip -o -selection clip)
            case edit
                gimp $argv[2]
                wp $bgimage
            case save-theme
                ln -s $bgimage ~/themes/$argv[2]
        end
    end
end
