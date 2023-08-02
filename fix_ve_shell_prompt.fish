function fix_ve_shell_prompt
	if exists $VIRTUAL_ENV
	  functions -e fish_prompt
	  functions -c _old_fish_prompt fish_prompt
	end

end
