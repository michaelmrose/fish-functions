function wp

    if not exists $argv
        while read -l line set acc $acc $line
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
                feh --bg-max $bgimage
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
            case theme
                wp $bgimage $argv[2]
            case remember-theme
                set sum (md5sum $bgimage)
                set target (readlink ~/themes/$argv[2])
                ln -s $target ~/themes/remembered/$sum
            case recall-theme
                set sum (md5sum $bgimage)
                wp $bgimage ~/themes/remembered/$sum
        end
    end
end
