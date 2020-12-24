function mpd-status-line
		if set playback (mpd-info status)
				echo (? "string match playing $playback"  ) (mpd-info metadata) via (mpd-info outputs)
		end
end
