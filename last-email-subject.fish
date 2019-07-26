# Defined in /home/michael/.config/fish/buffer/mu-last-message-subject.fish @ line 1
function last-email-subject
	mu find date:7d..now --sortfield=date --reverse --fields=s|head -1
end
