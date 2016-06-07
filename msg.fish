function msg
	# twmnc --id 1 --content (center-text $argv)
	twmnc -d 4000 --id 1 --content "$argv"
end
