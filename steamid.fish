function steamid
	echo (explode (steamapps | gr $argv))[-1]
end
