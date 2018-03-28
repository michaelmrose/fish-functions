# Defined in /home/michael/.config/fish/buffer/update-email-index.fish @ line 2
function update-email-index
	emacsclient -a '' -e '(mu4e-update-mail-and-index t)'
  pkill -RTMIN+11 i3blocks,
end
