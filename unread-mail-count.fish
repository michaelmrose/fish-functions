function unread-mail-count
    mu find " flag:unread and not flag:seen and date:today..now and not maildir:/OldGmail/techmail and not maildir:/archive and not maildir:/OldGmail/[Gmail].Spam"|wc -l


end
