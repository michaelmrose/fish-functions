function ve
	if exists $argv
		set veName $argv
	  else
		set veName '.venv'
	end
	source $veNAME/bin/activate.fish
	functions -e fish_prompt
	functions -c _old_fish_prompt fish_prompt
end
