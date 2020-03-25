# Defined in /home/michael/.config/fish/buffer/unread-mail-count.fish @ line 2
function unread-mail-count
    # set spam maildir:/OldGmail/[Gmail].Spam
    # set tech maildir:/OldGmail/techmail
    # set morespam maildir:/Gmail/[Gmail].Spam
    mu find flag:unread and date:7d..now and not maildir:/OldGmail/techmail
    # mu find "date:7D..now and flag:unread and not flag:trashed and not $spam and not $morespam and not $tech"|wc -l
end
