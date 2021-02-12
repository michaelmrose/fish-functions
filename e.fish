# Defined in /usr/home/michael/.config/fish/buffer/e_emf.fish @ line 2
function e
		emacsclient -$argv[1] \'\($argv[2..-1]\)\' 
end
