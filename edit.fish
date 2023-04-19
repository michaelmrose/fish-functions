function edit
	switch $argv[1]
		case -h
			emacsclient -c $argv
			case '*'
				emacsclient -cn $argv
	end
end
