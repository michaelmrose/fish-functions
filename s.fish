function s
	for i in (xauth list | condense_spaces)
    echo $i
  end
	sudo $argv
end
