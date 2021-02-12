# Defined in /usr/home/michael/.config/fish/buffer/e_emf.fish @ line 2
function e
		emacsclient -e \'\($argv[1..-1]\)\' 
end
