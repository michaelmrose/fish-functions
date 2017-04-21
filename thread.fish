function thread
	for line in $argv
    set res (eval $line $res)
  end
end
