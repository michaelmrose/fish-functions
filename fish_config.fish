function fish_config --description Launch\ fish\'s\ web\ based\ configuration
	
	set -l initial_tab
	if count $argv >/dev/null
		set initial_tab $argv[1]
	end
	eval $__fish_datadir/tools/web_config/webconfig.py $initial_tab
end
