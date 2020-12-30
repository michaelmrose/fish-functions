# Defined in /usr/home/michael/.config/fish/buffer/firefoxPlayerMeta.fish @ line 1
function firefoxPlayerMeta
		if set firefoxplayer (playerctl -l | g firefox)
				playerctl -p $firefoxplayer metadata
		end
end
