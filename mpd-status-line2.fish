# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line2.fish @ line 2
function mpd-status-line2
		if set playback (mpc-playback-status)
				# switch $playback
				# 		case paused
				# 				set symbol 
				# 		case playing
				# 				set symbol 
				# end
				set symbol (match-lists $playback "playing paused" )
				echo $symbol (mpc status |head -1) via (mpd-list-enabled-outputs)
		end
end
