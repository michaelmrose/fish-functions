# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line2.fish @ line 2
function mpd-status-line2
		if set playback (mpc-playback-status)
				switch $mpdstatus
						case paused
								set symbol 
						case playing
								set symbol 
				end
				echo $symbol (mpc status |head 1) (mpd-list-outputs)
		end
end
