function zfs-get-val
	zf get -H $argv[1] $argv[3] | condense_spaces | cut -d " " -f3
end
