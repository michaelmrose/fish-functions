# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line.fish @ line 20
function mpd-status-line2
		if set playback (mpd-playback-status)
				switch $mpdstatus
						case paused
								set symbol 
						case playing
								set symbol 
				end
				echo $symbol (mpc status |head 1) (mpd-list-outputs)
		end
end
