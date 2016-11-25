function steamid
	steamapps | gr $argv | cut -d " " -f2
end
