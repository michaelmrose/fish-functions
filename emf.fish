# Defined in /usr/home/michael/.config/fish/buffer/edit_emd_emf.fish @ line 27
function emf
		eval emacsclient -$argv[1] \'\($argv[2..-1]\)\' 
end
