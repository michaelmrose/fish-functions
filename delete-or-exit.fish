function delete-or-exit
	
	set -l cmd (commandline)

	switch "$cmd"

		case ''
		exit 0

		case '*'
		commandline -f delete-char

	end

end
