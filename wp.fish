# Defined in /home/michael/.config/fish/functions/wp.fish @ line 2
function wp
	if not exists $argv
        while read -l line
            set acc $acc $line
        end
        wp multi $acc
        return 0
    end

	  if test -f $argv[1]
            set-wallpaper $argv[1]
    else
        switch $argv[1]
            case help
                echo 'wp command arguments:'
                echo 'view [category]        -> view all images in folder' 
                echo 'edit                   -> edit in gimp and then reload'
                echo 'recent                 -> view recent backgrounds via sxiv'
                echo 'cat create [category]  -> to create a category'
                echo 'cat rename [old] [new] -> rename old to new'
                echo 'cat mv [category]      -> move current background to category'
                echo 'cat ls                 -> list categories'
                echo 'cat ls [category]      -> list files in category'
                echo 'cat [category]         -> pick a random background from category'
                echo 'name                   -> print category: filename with - replaced with spaces'
                echo 'save spec              -> save current image as category/name-of-wallpaper'
                echo 'swap                   -> swap left and right'
                echo 'rand style             -> given a style put a different random image of that style on all screens'
                echo 'randstyle              -> randomly choose a style and apply rand style'
                echo 'rm                     -> remove current wallpaper'
                echo 'recall                 -> rerun last feh command'
                echo 'similar                -> set a random wallpaper in the category as current as defined by bgstyle'
                echo 'next/prev              -> set next or previous wp in recent_backgrounds list'
                echo 'fill|scale|max         -> set current image to fill scale or max setting per feh'
                echo 'search [string]        -> enter a search string to be compared to file names'
            case view
                pics (get-folder-for-backgrounds $argv[2])
                # case categories
            case ls
                switch $argv[2]
                    case recent
                        p $recent_backgrounds
                    case '*'
                        for d in $argv[2..-1]
                            wp cat ls $d
                        end
                end
            case edit
                gimp $bgimage
                wp $bgimage
            case recent
                sxiv -tbfor $recent_backgrounds 2> /dev/null
            case open
                sxiv -f $bgimage
            case pick
                wp multi (sxiv -tbfor $argv[2..-1])
            case url
                set tmp /tmp/(uid)-wallpaper.jpg
                curl $argv[2] > $tmp
                wp $tmp
            case search
                sxiv -tbfor (fnd '.*' -t f ~/backgrounds|g $argv[2..-1])|wp
            case cat
                if test (count $argv) -lt 2
                    echo try mk, mv, file, ls, ls 'some category' 
                    return 1
                end
                switch $argv[2]
                    case create
                        create-wallpaper-category $argv[3..-1]
                    case rename
                        set old $argv[3]
                        set new $argv[4]
                        set src (get-folder-for-backgrounds $old)
                        set dest (echo $src | sed "s#/$old#/$new#g")
                        sed -i "s#/$old/#/$new/#g" ~/.fehbg
                        mv $src $dest
                        set -U recent_backgrounds (p $recent_backgrounds | sed "s#/$old/#/$new/#g")
                        wp recall
                    case mv
                        move-current-wallpaper-to-category $argv[3]
                    case ls
                        if test (count $argv) -eq 2
                            find $wallpaperroot -type d|rev | cut -d / -f1|rev
                        else
                            findall (get-folder-for-backgrounds $argv[3]) image
                        end
                    case '*'
                        wp style $argv[2]
                        
                end
            case name
                name-of-wallpaper
                # case file
                #     file-bg $argv[2..-1]
            case save
	              file-bg $bgimage $argv[2..-1]
            case search
                set images (findall $wallpaperroot image |g $argv[2..-1]) 2> /dev/null
                if exists $images
                    # sxiv -tbfor $images
                    p $images
                else
                    echo no results
                end

                # sxiv -tbfor (findall $wallpaperroot image | gr -w $argv[2..-1]) 2> /dev/null
            case rm
                rm $bgimage
                set recent_backgrounds (remove-from-list $bgimage $recent_backgrounds)
                wp $recent_backgrounds[1]
            case recall
                ~/.fehbg
            case show
                sxiv -f $bgimage
            case similar
                wp style $bgstyle
            case ls
            case next
                wallpaper-next
            case open
                sxiv $bgimage
            case prev
                wallpaper-prev
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
            case pano
                set perc (math 100 / (get-number-of-displays))
                convert -crop $perc%x100% +repage $bgimage /tmp/pano.jpg
                for i in (get-display-order)
                    set lst $lst /tmp/pano-$i.jpg
                end
                feh --bg-fill $lst 
            case size
                du -hs $wallpaperroot
            case rename
                file-bg $bgimage $bgstyle/$argv[2..-1]
            case style
                set backgrounddir (get-folder-for-backgrounds $argv[2])
                echo bgd is $backgrounddir
                set img (findall $backgrounddir image | shuf | head -1)
                wp $img
            case rand
                set numdisp (count (get-connected-displays))
                set style $argv[2]
                set pics (get-folder-for-backgrounds $style)/(take $numdisp (ls (get-folder-for-backgrounds $style)|shuf))

                feh --bg-max $pics
                echo $pics
                set -U bgimage $pics
            case clip
                wp url (xclip -o -selection clip)
            case multi
                feh --bg-max $argv[2..-1]
                set -U bgimage $argv[2..-1]
            case swap
                wp multi $bgimage[2] $bgimage[1]
            case randstyle
                set numdisp (count (get-connected-displays))
                set style (wp cat ls|shuf|all take 1)   
                set pics (get-folder-for-backgrounds $style)/(take $numdisp (ls (get-folder-for-backgrounds $style)|shuf))
                feh --bg-max $pics
                echo $pics
                set -U bgimage $pics
            case shuf
                p $bgimage |shuf |condense_lines|each wp multi
        end

    end
end
