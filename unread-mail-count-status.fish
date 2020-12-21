# Defined in /usr/home/michael/.config/fish/buffer/date-status-line_output-icon_u.fish @ line 24
function unread-mail-count-status
		set mail_count (unread-mail-count)
		i3status-rs-colorize Warning "     $mail_count"
end
