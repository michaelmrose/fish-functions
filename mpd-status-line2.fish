# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line2.fish @ line 2
function mpd-status-line2
		if set playback (mpc-playback-status)
				set symbol (either-of "string match playing $playback"  )
				set metadata (mpd status |head -1)
				set outputs (mpd-list-enabled-outputs)
				echo $syombol $metadata via $outputs
		end
end
