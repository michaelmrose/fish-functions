function matching-packages
	eix --nocolor nodejs | gr $argv | grep --invert-match '^[[:space:]]' | cut -d ' ' -f2-
end
