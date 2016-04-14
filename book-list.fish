function book-list
	while read -l line
    echo books $line &
  end
end
