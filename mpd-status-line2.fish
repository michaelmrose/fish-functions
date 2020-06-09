# Defined in /home/michael/.config/fish/buffer/mpd-status-line.fish @ line 19
function mpd-status-line2
    set mpdstatus (mpc status)
    set playorpaused (echo $mpdstatus| grep -E 'play|pause'|choose 0|str \[)
    if exists $playorpaused
        set current (echo $mpdstatus |head -1)
        set playtime (echo $mpdstatus|sd \n ''|choose 6)
        switch $playorpaused
            case paused
                echo  $current $playtime via (mpd-list-enabled-outputs)
            case playing
                echo  $current $playtime via (mpd-list-enabled-outputs)
        end
        echo none
        return 0
    end
end
