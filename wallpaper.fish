function wallpaper
	#default values
    set norecord false

    for i in (getvariables $argv)
        set val (explode $i)
        set $val[1] $val[2]
    end

    if not exists $argv
        wp recent
        return 0
    end

    switch $argv[1]
        case help
          echo write a real fucking help option soon
          echo view \[category\] - view category
          echo categories - list categories
          echo edit - edit $bgimage with gimp, reload on exit
          echo recent - show recently used backgrounds
          echo cat \[cateory\] - move $bgime to category
          echo name - return name
          echo album - set current album art as background
          return 0
        case view
            pics $argv[2]
            return 0
        case categories
            for i in (find $wallpaperroot -type d)
                cutlast / $i
            end
            return 0
        case edit
            gimp $bgimage
            wp $bgimage
            return 0
        case url
            file-bg-url $argv[2..-1]
            return 0
        case recent
            sxiv-new -tbfor $recent_backgrounds 2> /dev/null
            return 0
        case cat
            move-current-wallpaper-to-category $argv[2]
            return 0
        case name
            name-of-wallpaper
            return 0
        case create
            create-wallpaper-category $argv[2..-1]
            return 0
        case album
            if exists (album-art)
              wp (album-art)
            end
            return 0
        case trackalbum
           toggle-album-wp-tracking 
           return 0
        case slideshow
            slideshow $argv[2..-1]
            return 0
        case ss
            slideshow $argv[2..-1]
            return 0
        case get
            switch $argv[2]
                case random
                    pick-list-from-wh $argv[3] sort=random
                case "*"
                    pick-list-from-wh $argv[2..-1]
            end
            return 0
        case file
            file-bg $argv[2..-1]
            return 0
        case save
            save-wp $argv[2]
            return 0
        case search
            sxiv-new -tbfor (findall image | gr "$argv[2..-1]")
            return 0
        case rm
            rm $bgimage
            set recent_backgrounds (remove-from-list $bgimage $recent_backgrounds)
            wp $recent_backgrounds[1]
            return 0
        case recall
            ~/.fehbg
            return 0
        case any
            wp style any
            return 0
        case similar
            wp style $bgstyle
            return 0
        case list
            println $recent_backgrounds
            return 0
        case clean
            set -U recent_backgrounds (println $recent_backgrounds | grep -v xrated)
            return 0
        case next
            wallpaper-next
            return 0
        case prev
            wallpaper-prev
            return 0
        case scale
            feh --bg-scale $bgimage
            return 0
        case max
            feh --bg-max $bgimage
            return
        case fill
            feh --bg-fill $bgimage
            return
        case count
            count (findall $wallpaperroot image)
            return 0
        case size
            du -hs $wallpaperroot
            return 0
        case rename
            file-bg $bgimage $bgstyle/$argv[2..-1]
            return 0
        case style
            set backgrounddir (get-folder-for-backgrounds $argv[2])
            echo bgd is $backgrounddir
            set img (findall $backgrounddir image | shuf | head -1)
            # set img (findall-list dirs=$backgrounddir types=jpg,jpeg,bmp,png | shuf | head -1)
            wp $img
            return 0
        case "*"
            if test -f $argv[1]
                set img (pathof $argv[1])
                set -U bgstyle (cutlastn "/" 2 $img)
            else
                return 1
            end

    end

    set -U bgimage $img
    if not match $norecord true
        add-to-recent-backgrounds $img
        set -U wallpaperindex 1
    else
    end
    cp $img $wallpaperroot/lightdm

    set ratio (get-image-aspect-ratio-type $img)
    switch $ratio
        case "narrow"
            set format max
        case "wide"
            set format fill
        case "superwide"
            set perc (math 100 / (get-number-of-displays))
            convert -crop $perc%x100% +repage $img /tmp/pano.jpg
            for i in (get-display-order)
                set lst $lst /tmp/pano-$i.jpg
            end
            set img $lst
            set format fill
    end
    feh --bg-{$format} $img
    if pgrep i3blocks > /dev/null
        signal-i3blocks wallpaper
    end
end
