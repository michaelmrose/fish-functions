# Defined in /usr/home/michael/.config/fish/buffer/e_emf.fish @ line 2
function e
		set com -e$argv[1] "($argv[2..-1])"
		emacsclient -e "$com"
end
