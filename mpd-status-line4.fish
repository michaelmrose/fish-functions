# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-list-e.fish @ line 34
function mpd-status-line4
		set mpd_info (mpc status)
		echo $mpd_info
		if set playback (echo $mpd_info|sed -n 2p|choose -f '\[|\]' 0|grep -E 'playing|paused')
				set symbol (? "string match playing $playback"  )
				set metadata (echo $mpd_info |head -1)
				set outputs (mpc outputs | choose -f '\(|\)' 1|sd '
' ' ')
				echo $symbol $metadata via $outputs
		end
end
