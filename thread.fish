function thread
	if defined $argv[1]
    set res (eval $argv[1])
  else
    set res $argv[1]
  end
  
	for line in $argv[2..-1]
    set res (eval $line $res)
  end
end
