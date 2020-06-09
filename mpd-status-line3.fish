# Defined in /home/michael/.config/fish/buffer/mpd-status-line_mpd-status-lin.fish @ line 40
function mpd-status-line3
    set currentstatus (either (mpc status|g 'play|pause'|str \[) none)
    switch $currentstatus
        case playing
            set icon 
        case stopped
            set icon 
        case none
            set icon ''
    end
    if exists $icon
        set mpdstatus (mpc status)
        set current (p $mpdstatus |head -1)
        set playtime (echo $mpdstatus |choose 7)
        echo $icon $current $playtime
    else
        echo none
    end
end
