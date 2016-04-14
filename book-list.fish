function book-list
	while read -l line
    zathura (choose-format (get-fname-of-book $line)) &
  end
end
