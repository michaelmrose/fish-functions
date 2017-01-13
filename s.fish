function s
	for i in (xauth list | condense_spaces)
    xauth add $i 2> /dev/null
  end
	sudo $argv
end
