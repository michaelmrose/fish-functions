# Defined in /usr/home/michael/.config/fish/buffer/i3status-rs-colorize_unread-ma.fish @ line 9
function unread-mail-count
    mu find flag:unread and date:7d..now and not maildir:/OldGmail/techmail 2>/dev/null|wc -l
end
