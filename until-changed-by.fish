function until-changed-by
	set last (read -l)
	$argv
	while read -l line
		if not string match $line $last
			return 0
		end
	end
end
