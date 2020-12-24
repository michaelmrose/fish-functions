# Defined in /usr/home/michael/.config/fish/buffer/unread-elfeed-status_unread-ma.fish @ line 8
function unread-mail-count-status
		set mail_count (unread-mail-count)
		i3status-rs-colorize Warning "   $mail_count"
end
