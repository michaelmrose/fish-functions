# Defined in /usr/home/michael/.config/fish/buffer/date-status-line_unread-mail-c.fish @ line 2
function date-status-line
		i3status-rs-colorize Info (date '+%A %d %b %Y %l:%M %p')
end
