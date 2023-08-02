function ve
	source env/bin/activate.fish
	functions -e fish_prompt
	functions -c _old_fish_prompt fish_prompt
end
