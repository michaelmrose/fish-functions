function until-changed-by
	read last
	echo last is now $last
	echo we are going to eval $argv
	$argv
	while read -l line
		echo line and last are $line and $last
		if not string match $line $last
			return 0
		end
	end
end
