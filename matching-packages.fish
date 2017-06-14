function matching-packages
	eix --nocolor $argv | grep --invert-match '^[[:space:]]' | grep "[- ]$argv[- ]" | cut -d ' ' -f2-
end
