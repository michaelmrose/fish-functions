# Defined in /usr/home/michael/.config/fish/buffer/last-email-subject.fish @ line 2
function last-email-subject
	mu find flag:unread date:7d..now --sortfield=date --reverse --fields=s|head -1
end
