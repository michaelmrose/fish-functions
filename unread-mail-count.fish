# Defined in /usr/home/michael/.config/fish/buffer/unread-mail-count_unread-mail-.fish @ line 2
function unread-mail-count
    mu find flag:unread and date:7d..now and not maildir:/OldGmail/techmail 2>/dev/null|wc -l
end
