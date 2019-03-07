# Defined in /home/michael/.config/fish/buffer/player-status-line.fish @ line 18
function mpd-status-line
	set mpdstat ( mpc status|grep -E 'play|pause'|cut -d \[ -f2|cut -d \] -f1)
    switch $mpdstat
        case paused
            echo  (mpc current)
        case playing
            echo  (mpc current)
            
    end
end
