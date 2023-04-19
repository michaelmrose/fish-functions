function edit
	switch $argv[1]
		case -h
			emacsclient -c $argv[2..-1]
			case '*'
				emacsclient -cn $argv
	end
end
