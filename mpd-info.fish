# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 7
function mpd-info
		switch argv[1]
				case metadata
						mpc status |head -1
				case outputs
						mpc outputs | choose -f '\(|\)' 1|sd ' 
' ' '
				case status
						mpc status|sed -n 2p|choose -f '\[|\]' 0|grep -E 'playing|paused'
		end
end
