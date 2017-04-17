function list-remote
	echo www.(git remote -v | head -1 | condense_spaces | cut -d " " -f2 | cut -d @ -f2- | cut -d . -f1-2 | sed 's#:#/#g')
end
