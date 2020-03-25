# Defined in /home/michael/.config/fish/buffer/unread-mail-count.fish @ line 2
function unread-mail-count
    if mu find flag:unread and date:7d..now and not maildir:/OldGmail/techmail
        nil
    else
        0
    end
end
