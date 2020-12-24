# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 24
function mpd-status-line2
		if set playback (mpc-playback-status)
				set symbol (either-of "string match playing $playback"  )
				set metadata (mpd status |head -1)
				set outputs (mpd-list-enabled-outputs)
				echo $symbol $metadata via $outputs
		end
end
