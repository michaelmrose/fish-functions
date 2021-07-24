# Defined in /usr/home/michael/.config/fish/buffer/player-status.fish @ line 1
function player-status
	if string match Playing (playerctl status -p firefox)
		playerctl metadata title
	else
		mpd-status-line.clj
	end
end
