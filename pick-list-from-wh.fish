function pick-list-from-wh
	set cookies ~/.cjar.txt
    set purity 100
    set sort relevance
    set q $argv[1]
    set n 1
    set resolutions 1440x900,1600x900,1600x1200,1680x1050,1920x1080,1920x1200,2560x1440,2560x1600,3840x1080,5760x1080,3840x2160
    set wallhavengallery /tmp/wallhavengallery

    ensure-dir-exists /tmp/wallhavengallery 
    if exists (ls /tmp/wallhavengallery)
      rm /tmp/wallhavengallery/* #get rid of the files from last run
    end

    for i in (getvariables $argv)
        set val (explode $i)
        set $val[1] $val[2]
    end

    if test -f $cookies
        set curloptions -b
    end

    set img /tmp/wallhaven.jpg
    # set url "http://alpha.wallhaven.cc/search?q=$q&categories=111&purity=$purity&resolutions=$resolutions&sorting=$sort&order=desc"
    set url "https://alpha.wallhaven.cc/search?q=$q&purity=$purity&sorting=$sort&order=desc"
    set numbers (curl $curloptions $cookies $url | pup 'a[class=preview]' | grep href | head -$n | cut -d '"' -f4 | rev | cut -d "/" -f1 | rev)
    for i in (seq (count $numbers))
        # set targetimage http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-$numbers[$i].jpg
        set targetimage https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-$numbers[$i].jpg
        curl $curloptions $cookies $targetimage > $wallhavengallery/$i.jpg &
    end
    while pgrep curl > /dev/null
        sleep 0.25
    end
    if test $n -eq 1
        wp $wallhavengallery/1.jpg
    else
        # pics $wallhavengallery
        sxiv -tbfor $wallhavengallery
    end
end
