# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line.fish @ line 2
function mpd-status-line
		if set playback (mpd-info status)
				echo (? "string match playing $playback" " " " ") (mpd-info metadata) via (mpd-info outputs)
		else
				echo fuck
		end
end
