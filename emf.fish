# Defined in /home/michael/.config/fish/buffer/emf.fish @ line 2
function emf
	eval emacsclient -$argv[1] \'\($argv[2..-1]\)\'
end
