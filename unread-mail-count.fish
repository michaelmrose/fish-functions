# Defined in /home/michael/.config/fish/buffer/unread-mail-count.fish @ line 2
function unread-mail-count
	
  mu find 'date:7D..now and flag:unread and not flag:trashed and not maildir:/OldGmail/[Gmail].Spam and not maildir:/OldGmail/techmail and not maildir:/Gmail/[Gmail].Spam'|wc -l
end
