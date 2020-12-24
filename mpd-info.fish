# Defined in /usr/home/michael/.config/fish/buffer/mpd-info.fish @ line 2
function mpd-info
		echo a is $argv
		switch argv[1]
				case metadata
						echo metadata
						mpc status |head -1
				case outputs
						mpc outputs | choose -f '\(|\)' 1|sd ' ' ' '
				case status
						mpc status|sed -n 2p|choose -f '\[|\]' 0|grep -E 'playing|paused'
		end
end
