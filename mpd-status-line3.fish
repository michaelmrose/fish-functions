# Defined in /home/michael/.config/fish/buffer/mpd-status-line_mpd-status-lin.fish @ line 39
function mpd-status-line3
    set currentstatus (either (mpc status|g 'play|pause') none)
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
        echo $icon $current $playtime via (mpd-list-enabled-outputs)
    else
        echo none
    end
end
