# Defined in /home/michael/.config/fish/buffer/mpd-status-line_mpd-status-lin.fish @ line 21
function mpd-status-line2
    set mpdstatus (mpc status)
    set playorpaused (p $mpdstatus| grep -E 'play|pause'|choose 0|str \[)
    if exists $playorpaused
        set current (p $mpdstatus |head -1)
        set playtime (echo $mpdstatus |condense_lines |choose 7)
        switch $playorpaused
            case paused
                echo  $current $playtime via (mpd-list-enabled-outputs)
            case playing
                echo  $current $playtime via (mpd-list-enabled-outputs)
        end
    else
        echo none
        return 0
    end
end
