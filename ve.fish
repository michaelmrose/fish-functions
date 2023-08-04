function ve
	if exists $argv
		set name $argv
	else
		set name .venv
	end
	if not test -f $name
		mkdir $name
	end
	source $name/bin/activate.fish
end
