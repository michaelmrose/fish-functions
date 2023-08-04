function ve
	if exists $argv
		source $argv/bin/activate.fish
	else
		source .venv/bin/activate.fish
	end
end
