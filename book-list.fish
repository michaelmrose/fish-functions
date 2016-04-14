function book-list
	while read -l line
    zathura $line &
  end
end
