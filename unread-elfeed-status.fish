# Defined in /usr/home/michael/.config/fish/buffer/unread-elfeed-status_unread-ma.fish @ line 2
function unread-elfeed-status
		set elfeed_count (emf e mmr/elfeed-count-status)
		i3status-rs-colorize Warning " $elfeed_count"
end
