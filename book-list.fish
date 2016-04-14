function book-list
	while read -l line
    o (choose-format (get-fname-of-book $line)) &
  end
end
