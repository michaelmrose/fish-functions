function choose-window
	switch $argv
        case "visible"
            set ids (list-windows visible)
            set windows (list-windows visible names)
            set options $windows
        case "all"
            set ids (list-windows)
            set windows (list-windows names)
            for i in $windows
                if not substr Firefox $i
                    set realwins $realwins $i
                end
            end
            set windows $realwins
            set tabs (get-tabs)
            set options $tabs $windows
    end
    set choice (rfi match "windows" $options)
    if contains $choice $windows
        set ndx (findindex $choice $windows)
        focus id (hextodec $ids[$ndx])
    else if contains $choice $tabs
        set ndx (findindex $choice $tabs)
        focus-tab $ndx
    else
        if exists $choice
            openurl $choice
        end
    end

end
