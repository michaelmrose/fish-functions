function remove
	switch $argv[1]
		case -r
			sudo xbps-remove (select-package "$argv[2]")
		case '*'
			sudo xbps-remove $argv
	end
end
