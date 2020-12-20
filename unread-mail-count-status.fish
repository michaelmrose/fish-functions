# Defined in /usr/home/michael/.config/fish/buffer/date-status-line_unread-mail-c.fish @ line 7
function unread-mail-count-status
	i3status-rs-colorize Warning   (unread-mail-count)
end
