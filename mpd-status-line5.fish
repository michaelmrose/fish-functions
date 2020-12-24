function mpd-status-line5
		set mpd_info (mpc status)
		set mpdstatus (p $mpd_info |grep -E 'play|pause'|cut -d \[ -f2|cut -d \] -f1)
		if exists $mpdstatus
				set current (mpc status |head -1)
				set outputs (mpd-list-enabled-outputs)
				switch $mpdstatus
						case paused
								set symbol 
						case playing
								set symbol 
				end
				echo $symbol  $current via $outputs
		else
				return 0
		end
end
