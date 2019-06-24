# Defined in /home/michael/.config/fish/buffer/mpd-status-line.fish @ line 2
function mpd-status-line
	set mpdstat ( mpc status|grep -E 'play|pause'|cut -d \[ -f2|cut -d \] -f1)
  if not exists $mpdstat
      echo none
      return 0
  end
  switch $mpdstat
        case paused
            echo  (mpc current)
        case playing
            echo  (mpc current)
    end
end
