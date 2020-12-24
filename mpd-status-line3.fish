# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 36
function mpd-status-line3
		if set playback (mpc status|sed -n 2p|choose -f '\[|\]' 0|grep -E 'playing|paused')
				set symbol (? "string match playing $playback"  )
				set metadata (mpc status |head -1)
				set outputs (mpc outputs | choose -f '\(|\)' 1|sd '
' ' ')
				echo $symbol $metadata via $outputs
		end
end
