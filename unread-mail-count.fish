# Defined in /home/michael/.config/fish/buffer/unread-mail-count.fish @ line 2
function unread-mail-count
	
# mu find 'date:7D..now and flag:unread and not flag:trashed and not maildir:/OldGmail/[Gmail].Spam and not maildir:/OldGmail/techmail and not maildir:/Gmail/[Gmail].Spam'|wc -l

set recent date:7D..now
set spam maildir:/OldGmail/[Gmail].Spam
set tech maildir:/OldGmail/techmail
set morespam maildir:/Gmail/[Gmail].Spam
mu find "$recent and flag:unread and not flag:trashed and not $spam and not $morespam and not $tech"|wc -l
end
