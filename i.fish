function i
	switch $argv[1]
		case -r
			sudo xbps-install (select-package "$argv[2]")
		case '*'
			sudo xbps-install $argv; 
	end
end
