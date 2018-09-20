# Defined in /home/michael/.config/fish/buffer/unread-mail-count.fish @ line 2
function unread-mail-count
	mu find date:7D..now and flag:unread and not flag:trashed and not maildir:\[Gmail\].Spam 2> /dev/null | wc -l
end
