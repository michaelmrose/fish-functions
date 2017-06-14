function matching-packages
	eix --nocolor $argv | gr $argv | grep --invert-match '^[[:space:]]' | cut -d ' ' -f2-
end
