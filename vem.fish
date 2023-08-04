function vem
	if exists $argv
		set name $argv
	else
		set name .venv
	end
	if not test -d $name
		python -m venv $name
	end
	source $name/bin/activate.fish
end
