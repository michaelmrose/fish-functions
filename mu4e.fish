# Defined in /home/michael/.config/fish/buffer/mu4e.fish @ line 2
function mu4e
	emacsclient -a '' -e '(mu4e)' &
	  emacsclient -a '' -e '(mu4e-update-mail-and-index t)'&
end
