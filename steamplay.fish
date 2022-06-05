function steamplay
    if exists $argv
	eval (rg Exec (rg steam ~/.local/share/applications/ -l|g $argv|select)|choose -f = 1:)
    else
	# pick a steam game to play
    end
end
