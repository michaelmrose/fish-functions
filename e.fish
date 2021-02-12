# Defined in /usr/home/michael/.config/fish/buffer/e_emf.fish @ line 2
function e
		set com  "($argv[1..-1])"
		emacsclient -ecn "$com"
end
