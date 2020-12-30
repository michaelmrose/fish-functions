# Defined in /usr/home/michael/.config/fish/buffer/firefoxPlayerMeta_mpd-status-l.fish @ line 2
function firefoxPlayerMeta
		if set firefoxplayer (playerctl -l | g firefox)
				set playback (playerctl -p $firefoxplayer status)
				echo (? "string match playing $playback" "  " "  ")( playerctl -p $firefoxplayer metadata title)
		end
end
