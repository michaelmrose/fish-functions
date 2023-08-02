function ve
	if exists $argv
		set veName $argv
	  else
		set veName '.venv'
	end
	source $veNAME/bin/activate.fish
	fix_ve_shell_prompt
end
