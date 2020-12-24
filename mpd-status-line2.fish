# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line2.fish @ line 2
function mpd-status-line2
		if set playback (mpc-playback-status)
				# switch $playback
				# 		case paused
				# 				set symbol 
				# 		case playing
				# 				set symbol 
				# end
				# if [ $playback = playing ]
				# 				set symbol 
				# 		else
				# 				set symbol 
				# end
				set symbol (either-of "string match playing $playback"  )
				echo $symbol (mpc status |head -1) via (mpd-list-enabled-outputs)
		end
end
