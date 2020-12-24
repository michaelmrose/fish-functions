# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 47
function mpd-status-line4
		if set playback (mpd-info status)
				echo (? "string match playing $playback"  ) (mpd-info metadata) via (mpd-info outputs)
		end
end
