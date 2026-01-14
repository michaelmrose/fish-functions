# Defined in /usr/home/michael/.config/fish/buffer/mpd-info_mpd-status-line.fish @ line 14
function mpd-status-line
		# if set playback (mpd-info status)
		# 		echo (? "string match playing (mpd-info status)" " " " ") (mpd-info metadata) via (mpd-info outputs)
		# end
		if pgrep mpd > /dev/null
				set playbackstatus (mpd-info status)
				if string match playing $playbackstatus
						set icon " "
				else
						set icon " "
				end
				echo $icon (mpd-info metadata) via (mpd-info outputs)
		end
end
