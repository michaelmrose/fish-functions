# Defined in /usr/home/michael/.config/fish/buffer/player-status.fish @ line 2
function player-status
	if string match Playing (playerctl status -p firefox > /dev/null)
		playerctl metadata title
	else
		mpd-status-line.clj
	end
end
