# Defined in /home/michael/.config/fish/buffer/mpd-status-line.fish @ line 2
function mpd-status-line
	set mpd_info (mpc status)
  set mpdstatus (p $mpd_info |grep -E 'play|pause'|cut -d \[ -f2|cut -d \] -f1)
  if exists $mpdstatus
        set current (mpc status |head -1)
        set playtime (mpc status |condense_lines | cut -d\# -f2-|awk '{print $2}')
        switch $mpdstatus
            case paused
                echo  $current $playtime
            case playing
                echo  $current $playtime
        end
    else
        echo none
        return 0
    end
end
