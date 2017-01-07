function s
	for i in (xauth list | condense_spaces)
    xauth add $i
  end
	sudo $argv
end
