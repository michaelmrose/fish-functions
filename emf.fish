# Defined in /usr/home/michael/.config/fish/buffer/e_emf.fish @ line 9
function emf
		eval emacsclient -$argv[1] \'\($argv[2..-1]\)\' 
end
