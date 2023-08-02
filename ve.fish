function ve
	if exists $argv
		python3 -m virtualenv $argv
	end
	source env/bin/activate.fish
	functions -e fish_prompt
	functions -c _old_fish_prompt fish_prompt
end
