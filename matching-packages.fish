function matching-packages
	eix --nocolor $argv | grep --invert-match '^[[:space:]]' | gr [- ]$argv[- ] | cut -d ' ' -f2-
end
