function slideshow
	set time 30
        set ndx 1
        set interval minutes

        for i in (getvariables $argv)
            set val (explode $i)
            set $val[1] $val[2]
        end

        switch $argv[1]
            case add
                set img (pathof $argv[2])
                if not contains $img $backgroundslist
                    set -U backgroundslist $backgroundslist $img
                    echo adding $img to backgroundslist
                else
                    echo already in there
                end
            case category
                set -U backgroundslist (list-backgrounds $argv[2])
                if match $slideshowstatus paused
                    slideshow start
                end
            case remove
                set -U backgroundslist (without (pathof $argv[2]) $backgroundslist)
            case show
                if exists $backgroundslist
                    sxiv -tbfor $backgroundslist 2> /dev/null
                end
            case clear
                slideshow stop
                er backgroundslist
            case next
                if exists $backgroundslist
                    if not match $slideshowstatus paused
                        set -U currentbackgroundindex (math $currentbackgroundindex + 1)
                        if test $currentbackgroundindex -gt (count $backgroundslist)
                            set currentbackgroundindex 1
                        end
                        wp $backgroundslist[$currentbackgroundindex]
                    end
                end
            case prev
                if exists $backgroundslist
                    if not match $slideshowstatus paused
                        set -U currentbackgroundindex (math $currentbackgroundindex - 1)
                        if test $currentbackgroundindex -lt 1
                            set currentbackgroundindex (count $backgroundslist)
                        end
                        wp $backgroundslist[$currentbackgroundindex]
                    end
                end
            case pick
                set currentbackgroundindex (findindex $argv[2] $backgroundslist)
                wp $backgroundslist[$currentbackgroundindex]
            case start
                if exists $backgroundslist
                    set -U currentbackgroundindex $ndx
                    set -U slideshowstatus playing
                    wp $backgroundslist[$currentbackgroundindex]
                    switch $interval
                        case seconds
                            set seconds $time
                        case minutes
                            set seconds (math "$time * 60")
                        case hours
                            set seconds (math "time * 3600")
                    end
                    while not match $slideshowstatus stopped
                        sleep $seconds
                        wp slideshow next
                    end
                end
            case shuffle
                set backgroundslist (println $backgroundslist | shuf)
            case pause
                set -U slideshowstatus paused
            case stop
                set -U slideshowstatus stopped
            case status
                echo $slideshowstatus
            case continue
                slideshow next
                switch $slideshowstatus
                    case stopped
                        slideshow start ndx=$currentbackgroundindex
                    case play
                        nil
                    case paused
                        set -U slideshowstatus playing
                        slideshow next
                end
    end
end
