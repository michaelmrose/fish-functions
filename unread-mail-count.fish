function unread-mail-count
		mu find flag:unread and date:3d..now and not maildir:/OldGmail/techmail 2>/dev/null|wc -l
end
