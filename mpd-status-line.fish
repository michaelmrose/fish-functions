# Defined in /usr/home/michael/.config/fish/buffer/mpd-info_mpd-status-line.fish @ line 14
function mpd-status-line
		if set playback (mpd-info status)
				echo (? "string match playing (mpd-info status)" " " " ") (mpd-info metadata) via (mpd-info outputs)
		end
end
