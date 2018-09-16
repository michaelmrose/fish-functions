# Defined in /home/michael/.config/fish/buffer/mu4e.fish @ line 1
function mu4e
	emacsclient -a '' -e '(mu4e-update-mail-and-index t)'
    emacsclient -a '' -e '(mu4e)'
end
