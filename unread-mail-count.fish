function unread-mail-count
		# mu find flag:unread and date:1d..now and not maildir:/OldGmail/techmail 2>/dev/null|wc -l
		mu find " date:1d..now and not maildir:/OldGmail/techmail and not maildir:/archive and not maildir:/OldGmail/[Gmail].Spam" |wc -l
end
