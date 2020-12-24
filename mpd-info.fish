# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 6
function mpd-info
		switch argv[1]
				case metadata
						mpd status |head -1
				case outputs
						mpc outputs | choose -f '\(|\)' 1|sd ' \n' ' '
				case status
						mpc status|sed -n 2p|choose -f '\[|\]' 0|grep -E 'playing|paused'
		end
end
